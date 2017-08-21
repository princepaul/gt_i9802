.class public Landroid/app/ResourcesManager;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final NUM_DEFAULT_ASSETS:I = 0x2

.field static final TAG:Ljava/lang/String; = "ResourcesManager"

.field static sPackageManager:Landroid/content/pm/IPackageManager;

.field private static sResourcesManager:Landroid/app/ResourcesManager;


# instance fields
.field private final mActiveResources:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/res/ResourcesKey;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDisplays:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/DisplayAdjustments;",
            ">;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/Display;",
            ">;>;"
        }
    .end annotation
.end field

.field mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field mResConfiguration:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    .line 63
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    return-void
.end method

.method private attachCommonAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z
    .locals 13
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "theme"    # Landroid/content/res/ThemeConfig;

    .prologue
    .line 743
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getBasePackageCount()I

    move-result v2

    .line 744
    .local v2, "count":I
    const/4 v9, 0x2

    if-le v2, v9, :cond_1

    .line 745
    const/4 v9, 0x2

    invoke-virtual {p1, v9}, Landroid/content/res/AssetManager;->getBasePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 752
    .local v0, "basePackageName":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    .line 754
    .local v3, "piTheme":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ResourcesManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    invoke-virtual {p2, v0}, Landroid/content/res/ThemeConfig;->getOverlayPkgNameForApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    invoke-interface {v9, v10, v11, v12}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 760
    :goto_1
    if-eqz v3, :cond_0

    iget-object v9, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v9, :cond_3

    .line 761
    :cond_0
    const/4 v9, 0x0

    .line 780
    .end local v0    # "basePackageName":Ljava/lang/String;
    .end local v3    # "piTheme":Landroid/content/pm/PackageInfo;
    :goto_2
    return v9

    .line 746
    :cond_1
    const/4 v9, 0x2

    if-ne v2, v9, :cond_2

    .line 747
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/content/res/AssetManager;->getBasePackageName(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "basePackageName":Ljava/lang/String;
    goto :goto_0

    .line 749
    .end local v0    # "basePackageName":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .line 764
    .restart local v0    # "basePackageName":Ljava/lang/String;
    .restart local v3    # "piTheme":Landroid/content/pm/PackageInfo;
    :cond_3
    iget-object v9, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v9}, Landroid/content/pm/ThemeUtils;->getCommonPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 766
    .local v7, "themePackageName":Ljava/lang/String;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 767
    iget-object v9, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v9, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 768
    .local v8, "themePath":Ljava/lang/String;
    const-string v4, "assets/overlays/common/"

    .line 769
    .local v4, "prefixPath":Ljava/lang/String;
    const-string v9, "common"

    iget-object v10, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/content/pm/ThemeUtils;->getTargetCacheDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 771
    .local v6, "resCachePath":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/resources.apk"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 772
    .local v5, "resApkPath":Ljava/lang/String;
    invoke-virtual {p1, v8, v5, v4}, Landroid/content/res/AssetManager;->addCommonOverlayPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 774
    .local v1, "cookie":I
    if-eqz v1, :cond_4

    .line 775
    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->setCommonResCookie(I)V

    .line 776
    invoke-virtual {p1, v7}, Landroid/content/res/AssetManager;->setCommonResPackageName(Ljava/lang/String;)V

    .line 780
    .end local v1    # "cookie":I
    .end local v4    # "prefixPath":Ljava/lang/String;
    .end local v5    # "resApkPath":Ljava/lang/String;
    .end local v6    # "resCachePath":Ljava/lang/String;
    .end local v8    # "themePath":Ljava/lang/String;
    :cond_4
    const/4 v9, 0x1

    goto :goto_2

    .line 757
    .end local v7    # "themePackageName":Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method private attachIconAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z
    .locals 13
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "theme"    # Landroid/content/res/ThemeConfig;

    .prologue
    const/4 v8, 0x0

    .line 692
    const/4 v3, 0x0

    .line 694
    .local v3, "piIcon":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ResourcesManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    invoke-virtual {p2}, Landroid/content/res/ThemeConfig;->getIconPackPkgName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    invoke-interface {v9, v10, v11, v12}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 699
    :goto_0
    if-eqz v3, :cond_0

    iget-object v9, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v9, :cond_1

    .line 726
    :cond_0
    :goto_1
    return v8

    .line 703
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/ThemeConfig;->getIconPackPkgName()Ljava/lang/String;

    move-result-object v2

    .line 704
    .local v2, "iconPkg":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 705
    iget-object v8, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v8, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 706
    .local v7, "themeIconPath":Ljava/lang/String;
    const-string v4, "assets/icons/"

    .line 707
    .local v4, "prefixPath":Ljava/lang/String;
    invoke-static {v2}, Landroid/content/pm/ThemeUtils;->getIconPackDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 708
    .local v1, "iconDir":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/resources.arsc"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 709
    .local v6, "resTablePath":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/resources.apk"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 712
    .local v5, "resApkPath":Ljava/lang/String;
    iget-boolean v8, v3, Landroid/content/pm/PackageInfo;->isLegacyIconPackApk:Z

    if-eqz v8, :cond_2

    .line 713
    const-string v4, ""

    .line 714
    const-string v5, ""

    .line 715
    const-string v6, ""

    .line 718
    :cond_2
    const/16 v8, 0x62

    invoke-virtual {p1, v7, v5, v4, v8}, Landroid/content/res/AssetManager;->addIconPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 720
    .local v0, "cookie":I
    if-eqz v0, :cond_3

    .line 721
    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->setIconPackCookie(I)V

    .line 722
    invoke-virtual {p1, v2}, Landroid/content/res/AssetManager;->setIconPackageName(Ljava/lang/String;)V

    .line 726
    .end local v0    # "cookie":I
    .end local v1    # "iconDir":Ljava/lang/String;
    .end local v4    # "prefixPath":Ljava/lang/String;
    .end local v5    # "resApkPath":Ljava/lang/String;
    .end local v6    # "resTablePath":Ljava/lang/String;
    .end local v7    # "themeIconPath":Ljava/lang/String;
    :cond_3
    const/4 v8, 0x1

    goto :goto_1

    .line 696
    .end local v2    # "iconPkg":Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_0
.end method

.method private attachThemeAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z
    .locals 22
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "theme"    # Landroid/content/res/ThemeConfig;

    .prologue
    .line 576
    const/4 v15, 0x0

    .line 577
    .local v15, "piTheme":Landroid/content/pm/PackageInfo;
    const/4 v14, 0x0

    .line 578
    .local v14, "piTarget":Landroid/content/pm/PackageInfo;
    const/4 v12, 0x0

    .line 579
    .local v12, "piAndroid":Landroid/content/pm/PackageInfo;
    const/4 v13, 0x0

    .line 585
    .local v13, "piCm":Landroid/content/pm/PackageInfo;
    const/4 v9, 0x0

    .line 586
    .local v9, "basePackageName":Ljava/lang/String;
    const/16 v17, 0x0

    .line 587
    .local v17, "resourcePackageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/AssetManager;->getBasePackageCount()I

    move-result v11

    .line 588
    .local v11, "count":I
    const/4 v3, 0x2

    if-le v11, v3, :cond_2

    .line 589
    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->getBasePackageName(I)Ljava/lang/String;

    move-result-object v9

    .line 590
    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->getBaseResourcePackageName(I)Ljava/lang/String;

    move-result-object v17

    .line 598
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/app/ResourcesManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/content/res/ThemeConfig;->getOverlayPkgNameForApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v3, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v15

    .line 601
    invoke-static {}, Landroid/app/ResourcesManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/16 v19, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v3, v9, v0, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 607
    if-nez v14, :cond_0

    if-eqz v17, :cond_0

    .line 608
    invoke-static {}, Landroid/app/ResourcesManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/16 v19, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v3, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 611
    :cond_0
    invoke-static {}, Landroid/app/ResourcesManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-string v19, "android"

    const/16 v20, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v3, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 613
    invoke-static {}, Landroid/app/ResourcesManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-string v19, "cyanogenmod.platform"

    const/16 v20, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v3, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 618
    :goto_1
    if-eqz v15, :cond_1

    iget-object v3, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    if-eqz v14, :cond_1

    iget-object v3, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    if-eqz v12, :cond_1

    iget-object v3, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    if-eqz v13, :cond_1

    iget-object v3, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    iget-object v3, v15, Landroid/content/pm/PackageInfo;->mOverlayTargets:Ljava/util/ArrayList;

    if-nez v3, :cond_4

    .line 623
    :cond_1
    const/4 v3, 0x0

    .line 680
    :goto_2
    return v3

    .line 591
    :cond_2
    const/4 v3, 0x2

    if-ne v11, v3, :cond_3

    .line 592
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->getBasePackageName(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 594
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 627
    :cond_4
    iget-object v0, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 628
    .local v18, "themePackageName":Ljava/lang/String;
    iget-object v3, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 629
    .local v5, "themePath":Ljava/lang/String;
    iget-boolean v3, v14, Landroid/content/pm/PackageInfo;->isThemeApk:Z

    if-nez v3, :cond_5

    iget-object v3, v15, Landroid/content/pm/PackageInfo;->mOverlayTargets:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 630
    iget-object v3, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 631
    .local v7, "targetPackagePath":Ljava/lang/String;
    invoke-static {v9}, Landroid/content/pm/ThemeUtils;->getOverlayPathToTarget(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 633
    .local v8, "prefixPath":Ljava/lang/String;
    iget-object v3, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/content/pm/ThemeUtils;->getTargetCacheDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 635
    .local v16, "resCachePath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v19, "/resources.apk"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 636
    .local v6, "resApkPath":Ljava/lang/String;
    iget-object v3, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/content/pm/ThemeUtils;->getIdmapPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "idmapPath":Ljava/lang/String;
    move-object/from16 v3, p1

    .line 637
    invoke-virtual/range {v3 .. v8}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 640
    .local v10, "cookie":I
    if-eqz v10, :cond_5

    .line 641
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->setThemePackageName(Ljava/lang/String;)V

    .line 642
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/res/AssetManager;->addThemeCookie(I)V

    .line 647
    .end local v4    # "idmapPath":Ljava/lang/String;
    .end local v6    # "resApkPath":Ljava/lang/String;
    .end local v7    # "targetPackagePath":Ljava/lang/String;
    .end local v8    # "prefixPath":Ljava/lang/String;
    .end local v10    # "cookie":I
    .end local v16    # "resCachePath":Ljava/lang/String;
    :cond_5
    iget-boolean v3, v14, Landroid/content/pm/PackageInfo;->isThemeApk:Z

    if-nez v3, :cond_6

    iget-object v3, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v15, Landroid/content/pm/PackageInfo;->mOverlayTargets:Ljava/util/ArrayList;

    iget-object v0, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 649
    iget-object v3, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/content/pm/ThemeUtils;->getTargetCacheDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 651
    .restart local v16    # "resCachePath":Ljava/lang/String;
    iget-object v3, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/content/pm/ThemeUtils;->getOverlayPathToTarget(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 652
    .restart local v8    # "prefixPath":Ljava/lang/String;
    iget-object v3, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 653
    .restart local v7    # "targetPackagePath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v19, "/resources.apk"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 654
    .restart local v6    # "resApkPath":Ljava/lang/String;
    iget-object v3, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/content/pm/ThemeUtils;->getIdmapPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "idmapPath":Ljava/lang/String;
    move-object/from16 v3, p1

    .line 655
    invoke-virtual/range {v3 .. v8}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 657
    .restart local v10    # "cookie":I
    if-eqz v10, :cond_6

    .line 658
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->setThemePackageName(Ljava/lang/String;)V

    .line 659
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/res/AssetManager;->addThemeCookie(I)V

    .line 664
    .end local v4    # "idmapPath":Ljava/lang/String;
    .end local v6    # "resApkPath":Ljava/lang/String;
    .end local v7    # "targetPackagePath":Ljava/lang/String;
    .end local v8    # "prefixPath":Ljava/lang/String;
    .end local v10    # "cookie":I
    .end local v16    # "resCachePath":Ljava/lang/String;
    :cond_6
    iget-boolean v3, v14, Landroid/content/pm/PackageInfo;->isThemeApk:Z

    if-nez v3, :cond_7

    const-string v3, "android"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, v15, Landroid/content/pm/PackageInfo;->mOverlayTargets:Ljava/util/ArrayList;

    const-string v19, "android"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 666
    iget-object v3, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/content/pm/ThemeUtils;->getTargetCacheDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 668
    .restart local v16    # "resCachePath":Ljava/lang/String;
    iget-object v3, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/content/pm/ThemeUtils;->getOverlayPathToTarget(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 669
    .restart local v8    # "prefixPath":Ljava/lang/String;
    iget-object v3, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 670
    .restart local v7    # "targetPackagePath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v19, "/resources.apk"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 671
    .restart local v6    # "resApkPath":Ljava/lang/String;
    const-string v3, "android"

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/content/pm/ThemeUtils;->getIdmapPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "idmapPath":Ljava/lang/String;
    move-object/from16 v3, p1

    .line 672
    invoke-virtual/range {v3 .. v8}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 674
    .restart local v10    # "cookie":I
    if-eqz v10, :cond_7

    .line 675
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->setThemePackageName(Ljava/lang/String;)V

    .line 676
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/res/AssetManager;->addThemeCookie(I)V

    .line 680
    .end local v4    # "idmapPath":Ljava/lang/String;
    .end local v6    # "resApkPath":Ljava/lang/String;
    .end local v7    # "targetPackagePath":Ljava/lang/String;
    .end local v8    # "prefixPath":Ljava/lang/String;
    .end local v10    # "cookie":I
    .end local v16    # "resCachePath":Ljava/lang/String;
    :cond_7
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 615
    .end local v5    # "themePath":Ljava/lang/String;
    .end local v18    # "themePackageName":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto/16 :goto_1
.end method

.method private detachThemeAssets(Landroid/content/res/AssetManager;)V
    .locals 8
    .param p1, "assets"    # Landroid/content/res/AssetManager;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 784
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getThemePackageName()Ljava/lang/String;

    move-result-object v4

    .line 785
    .local v4, "themePackageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getIconPackageName()Ljava/lang/String;

    move-result-object v2

    .line 786
    .local v2, "iconPackageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getCommonResPackageName()Ljava/lang/String;

    move-result-object v0

    .line 789
    .local v0, "commonResPackageName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getIconPackCookie()I

    move-result v5

    if-lez v5, :cond_0

    .line 790
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getIconPackCookie()I

    move-result v5

    invoke-virtual {p1, v2, v5}, Landroid/content/res/AssetManager;->removeOverlayPath(Ljava/lang/String;I)Z

    .line 791
    invoke-virtual {p1, v6}, Landroid/content/res/AssetManager;->setIconPackageName(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p1, v7}, Landroid/content/res/AssetManager;->setIconPackCookie(I)V

    .line 795
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getCommonResCookie()I

    move-result v5

    if-lez v5, :cond_1

    .line 796
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getCommonResCookie()I

    move-result v5

    invoke-virtual {p1, v0, v5}, Landroid/content/res/AssetManager;->removeOverlayPath(Ljava/lang/String;I)Z

    .line 797
    invoke-virtual {p1, v6}, Landroid/content/res/AssetManager;->setCommonResPackageName(Ljava/lang/String;)V

    .line 798
    invoke-virtual {p1, v7}, Landroid/content/res/AssetManager;->setCommonResCookie(I)V

    .line 800
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getThemeCookies()Ljava/util/ArrayList;

    move-result-object v3

    .line 801
    .local v3, "themeCookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 803
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 804
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/content/res/AssetManager;->removeOverlayPath(Ljava/lang/String;I)Z

    .line 803
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 807
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getThemeCookies()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 808
    invoke-virtual {p1, v6}, Landroid/content/res/AssetManager;->setThemePackageName(Ljava/lang/String;)V

    .line 809
    return-void
.end method

.method public static getInstance()Landroid/app/ResourcesManager;
    .locals 2

    .prologue
    .line 78
    const-class v1, Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 79
    :try_start_0
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Landroid/app/ResourcesManager;

    invoke-direct {v0}, Landroid/app/ResourcesManager;-><init>()V

    sput-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 82
    :cond_0
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    monitor-exit v1

    return-object v0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getPackageManager()Landroid/content/pm/IPackageManager;
    .locals 2

    .prologue
    .line 555
    sget-object v1, Landroid/app/ResourcesManager;->sPackageManager:Landroid/content/pm/IPackageManager;

    if-eqz v1, :cond_0

    .line 556
    sget-object v1, Landroid/app/ResourcesManager;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 560
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 558
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 559
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    sput-object v1, Landroid/app/ResourcesManager;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 560
    sget-object v1, Landroid/app/ResourcesManager;->sPackageManager:Landroid/content/pm/IPackageManager;

    goto :goto_0
.end method

.method private getThemeConfig()Landroid/content/res/ThemeConfig;
    .locals 2

    .prologue
    .line 812
    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 813
    .local v0, "config":Landroid/content/res/Configuration;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setActivityIcons(Landroid/content/res/Resources;)V
    .locals 17
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    .line 414
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 415
    .local v8, "iconResources":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/PackageItemInfo;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/AssetManager;->getAppName()Ljava/lang/String;

    move-result-object v11

    .line 416
    .local v11, "pkgName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 417
    .local v10, "pkgInfo":Landroid/content/pm/PackageInfo;
    const/4 v2, 0x0

    .line 420
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ResourcesManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v14, v11, v15, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 427
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget-object v13, v14, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    .line 428
    .local v13, "themeConfig":Landroid/content/res/ThemeConfig;
    if-eqz v11, :cond_0

    if-eqz v13, :cond_0

    invoke-virtual {v13}, Landroid/content/res/ThemeConfig;->getIconPackPkgName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 461
    .end local v13    # "themeConfig":Landroid/content/res/ThemeConfig;
    :goto_0
    return-void

    .line 422
    :catch_0
    move-exception v5

    .line 423
    .local v5, "e1":Landroid/os/RemoteException;
    const-string v14, "ResourcesManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unable to get pkg "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 434
    .end local v5    # "e1":Landroid/os/RemoteException;
    .restart local v13    # "themeConfig":Landroid/content/res/ThemeConfig;
    :cond_0
    if-eqz v10, :cond_2

    iget-object v14, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v14, :cond_2

    .line 435
    iget-object v2, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 436
    iget v14, v2, Landroid/content/pm/ApplicationInfo;->themedIcon:I

    if-nez v14, :cond_1

    iget v14, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v8, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_2

    .line 437
    :cond_1
    iget v14, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v8, v14, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 442
    :cond_2
    if-eqz v10, :cond_7

    iget-object v14, v10, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v14, :cond_7

    .line 443
    iget-object v3, v10, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .local v3, "arr$":[Landroid/content/pm/ActivityInfo;
    array-length v9, v3

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v9, :cond_7

    aget-object v1, v3, v6

    .line 444
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    iget v14, v1, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v14, :cond_5

    iget v14, v1, Landroid/content/pm/ActivityInfo;->themedIcon:I

    if-nez v14, :cond_3

    iget v14, v1, Landroid/content/pm/ActivityInfo;->icon:I

    invoke-virtual {v8, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_5

    .line 445
    :cond_3
    iget v14, v1, Landroid/content/pm/ActivityInfo;->icon:I

    invoke-virtual {v8, v14, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 443
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 446
    :cond_5
    if-eqz v2, :cond_4

    iget v14, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v14, :cond_4

    iget v14, v1, Landroid/content/pm/ActivityInfo;->themedIcon:I

    if-nez v14, :cond_6

    iget v14, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v8, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_4

    .line 448
    :cond_6
    iget v14, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v8, v14, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 453
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v3    # "arr$":[Landroid/content/pm/ActivityInfo;
    .end local v6    # "i$":I
    .end local v9    # "len$":I
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->setIconResources(Landroid/util/SparseArray;)V

    .line 454
    invoke-static {}, Landroid/app/ResourcesManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v12

    .line 456
    .local v12, "pm":Landroid/content/pm/IPackageManager;
    :try_start_1
    invoke-interface {v12}, Landroid/content/pm/IPackageManager;->getComposedIconInfo()Landroid/app/ComposedIconInfo;

    move-result-object v7

    .line 457
    .local v7, "iconInfo":Landroid/app/ComposedIconInfo;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->setComposedIconInfo(Landroid/app/ComposedIconInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 458
    .end local v7    # "iconInfo":Landroid/app/ComposedIconInfo;
    :catch_1
    move-exception v4

    .line 459
    .local v4, "e":Ljava/lang/Exception;
    const-string v14, "ResourcesManager"

    const-string v15, "Failed to retrieve ComposedIconInfo"

    invoke-static {v14, v15, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public applyCompatConfiguration(ILandroid/content/res/Configuration;)Z
    .locals 1
    .param p1, "displayDensity"    # I
    .param p2, "compatConfiguration"    # Landroid/content/res/Configuration;

    .prologue
    .line 130
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 132
    const/4 v0, 0x1

    .line 134
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z
    .locals 13
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 465
    iget-object v12, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    if-nez v12, :cond_0

    .line 466
    new-instance v12, Landroid/content/res/Configuration;

    invoke-direct {v12}, Landroid/content/res/Configuration;-><init>()V

    iput-object v12, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    .line 468
    :cond_0
    iget-object v12, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v12, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v12

    if-nez v12, :cond_1

    if-nez p2, :cond_1

    .line 471
    const/4 v12, 0x0

    .line 551
    :goto_0
    return v12

    .line 473
    :cond_1
    iget-object v12, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v12, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v1

    .line 475
    .local v1, "changes":I
    iget-object v12, p0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->clear()V

    .line 476
    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 478
    .local v2, "defaultDisplayMetrics":Landroid/util/DisplayMetrics;
    if-eqz p2, :cond_3

    iget-object v12, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v12, :cond_2

    iget-object v12, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v12, p2}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 480
    :cond_2
    iput-object p2, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 481
    or-int/lit16 v1, v1, 0xd00

    .line 487
    :cond_3
    iget-object v12, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v12, :cond_4

    .line 488
    iget-object v12, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v12}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 491
    :cond_4
    invoke-static {p1, v2, p2}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 493
    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    .line 496
    const/4 v11, 0x0

    .line 498
    .local v11, "tmpConfig":Landroid/content/res/Configuration;
    iget-object v12, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    add-int/lit8 v6, v12, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_f

    .line 499
    iget-object v12, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v12, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/res/ResourcesKey;

    .line 500
    .local v8, "key":Landroid/content/res/ResourcesKey;
    iget-object v12, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v12, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/res/Resources;

    .line 501
    .local v9, "r":Landroid/content/res/Resources;
    if-eqz v9, :cond_e

    .line 504
    iget v3, v8, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .line 505
    .local v3, "displayId":I
    if-nez v3, :cond_b

    const/4 v7, 0x1

    .line 506
    .local v7, "isDefaultDisplay":Z
    :goto_2
    move-object v4, v2

    .line 507
    .local v4, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v8}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v5

    .line 508
    .local v5, "hasOverrideConfiguration":Z
    const/high16 v12, 0x100000

    and-int/2addr v12, v1

    if-eqz v12, :cond_c

    const/4 v10, 0x1

    .line 509
    .local v10, "themeChanged":Z
    :goto_3
    if-eqz v10, :cond_5

    .line 510
    invoke-virtual {v9}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 511
    .local v0, "am":Landroid/content/res/AssetManager;
    invoke-virtual {v0}, Landroid/content/res/AssetManager;->hasThemeSupport()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 512
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->setIconResources(Landroid/util/SparseArray;)V

    .line 513
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->setComposedIconInfo(Landroid/app/ComposedIconInfo;)V

    .line 514
    invoke-direct {p0, v0}, Landroid/app/ResourcesManager;->detachThemeAssets(Landroid/content/res/AssetManager;)V

    .line 515
    iget-object v12, p1, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    if-eqz v12, :cond_5

    .line 516
    iget-object v12, p1, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    invoke-direct {p0, v0, v12}, Landroid/app/ResourcesManager;->attachThemeAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z

    .line 517
    iget-object v12, p1, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    invoke-direct {p0, v0, v12}, Landroid/app/ResourcesManager;->attachCommonAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z

    .line 518
    iget-object v12, p1, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    invoke-direct {p0, v0, v12}, Landroid/app/ResourcesManager;->attachIconAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 519
    invoke-direct {p0, v9}, Landroid/app/ResourcesManager;->setActivityIcons(Landroid/content/res/Resources;)V

    .line 524
    .end local v0    # "am":Landroid/content/res/AssetManager;
    :cond_5
    if-eqz v7, :cond_6

    if-eqz v5, :cond_d

    .line 525
    :cond_6
    if-nez v11, :cond_7

    .line 526
    new-instance v11, Landroid/content/res/Configuration;

    .end local v11    # "tmpConfig":Landroid/content/res/Configuration;
    invoke-direct {v11}, Landroid/content/res/Configuration;-><init>()V

    .line 528
    .restart local v11    # "tmpConfig":Landroid/content/res/Configuration;
    :cond_7
    invoke-virtual {v11, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 529
    if-nez v7, :cond_8

    .line 530
    invoke-virtual {p0, v3}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 531
    invoke-virtual {p0, v4, v11}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 533
    :cond_8
    if-eqz v5, :cond_9

    .line 534
    iget-object v12, v8, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v11, v12}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 536
    :cond_9
    invoke-virtual {v9, v11, v4, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 540
    :goto_4
    if-eqz v10, :cond_a

    .line 541
    invoke-virtual {v9}, Landroid/content/res/Resources;->updateStringCache()V

    .line 498
    .end local v3    # "displayId":I
    .end local v4    # "dm":Landroid/util/DisplayMetrics;
    .end local v5    # "hasOverrideConfiguration":Z
    .end local v7    # "isDefaultDisplay":Z
    .end local v10    # "themeChanged":Z
    :cond_a
    :goto_5
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_1

    .line 505
    .restart local v3    # "displayId":I
    :cond_b
    const/4 v7, 0x0

    goto :goto_2

    .line 508
    .restart local v4    # "dm":Landroid/util/DisplayMetrics;
    .restart local v5    # "hasOverrideConfiguration":Z
    .restart local v7    # "isDefaultDisplay":Z
    :cond_c
    const/4 v10, 0x0

    goto :goto_3

    .line 538
    .restart local v10    # "themeChanged":Z
    :cond_d
    invoke-virtual {v9, p1, v4, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    goto :goto_4

    .line 547
    .end local v3    # "displayId":I
    .end local v4    # "dm":Landroid/util/DisplayMetrics;
    .end local v5    # "hasOverrideConfiguration":Z
    .end local v7    # "isDefaultDisplay":Z
    .end local v10    # "themeChanged":Z
    :cond_e
    iget-object v12, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v12, v6}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_5

    .line 551
    .end local v8    # "key":Landroid/content/res/ResourcesKey;
    .end local v9    # "r":Landroid/content/res/Resources;
    :cond_f
    if-eqz v1, :cond_10

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_10
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method final applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "dm"    # Landroid/util/DisplayMetrics;
    .param p2, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    .line 108
    iput v3, p2, Landroid/content/res/Configuration;->touchscreen:I

    .line 109
    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 110
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 111
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 112
    iget v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v0

    .line 113
    .local v0, "sl":I
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_0

    .line 114
    const/4 v1, 0x2

    iput v1, p2, Landroid/content/res/Configuration;->orientation:I

    .line 115
    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v0, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v1

    iput v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    .line 122
    :goto_0
    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 123
    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 124
    iget v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 125
    iget v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 126
    return-void

    .line 118
    :cond_0
    iput v3, p2, Landroid/content/res/Configuration;->orientation:I

    .line 119
    iget v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v0, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v1

    iput v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    goto :goto_0
.end method

.method public getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;
    .locals 7
    .param p1, "displayId"    # I
    .param p2, "displayAdjustments"    # Landroid/view/DisplayAdjustments;

    .prologue
    .line 145
    if-eqz p2, :cond_0

    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1, p2}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    .line 147
    .local v1, "displayAdjustmentsCopy":Landroid/view/DisplayAdjustments;
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 149
    .local v3, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/view/DisplayAdjustments;>;"
    monitor-enter p0

    .line 150
    :try_start_0
    iget-object v5, p0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 151
    .local v4, "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    if-eqz v4, :cond_1

    .line 152
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display;

    .line 153
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_1

    .line 154
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    .end local v0    # "display":Landroid/view/Display;
    :goto_1
    return-object v0

    .line 145
    .end local v1    # "displayAdjustmentsCopy":Landroid/view/DisplayAdjustments;
    .end local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/view/DisplayAdjustments;>;"
    .end local v4    # "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    :cond_0
    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1}, Landroid/view/DisplayAdjustments;-><init>()V

    goto :goto_0

    .line 157
    .restart local v1    # "displayAdjustmentsCopy":Landroid/view/DisplayAdjustments;
    .restart local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/view/DisplayAdjustments;>;"
    .restart local v4    # "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    .line 158
    .local v2, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    if-nez v2, :cond_2

    .line 160
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_1

    .line 167
    .end local v2    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v4    # "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 162
    .restart local v2    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .restart local v4    # "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    :cond_2
    :try_start_2
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/view/DisplayAdjustments;

    invoke-virtual {v2, p1, v5}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    .line 163
    .restart local v0    # "display":Landroid/view/Display;
    if-eqz v0, :cond_3

    .line 164
    iget-object v5, p0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method getDisplayMetricsLocked()Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    .line 95
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 96
    .local v1, "dm":Landroid/util/DisplayMetrics;
    sget-object v2, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    invoke-virtual {p0, p1, v2}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    .line 98
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 103
    :goto_0
    return-object v1

    .line 101
    :cond_0
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    goto :goto_0
.end method

.method getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/content/Context;Z)Landroid/content/res/Resources;
    .locals 29
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayDirs"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "displayId"    # I
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p8, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p9, "context"    # Landroid/content/Context;
    .param p10, "isThemeable"    # Z

    .prologue
    .line 185
    move-object/from16 v0, p8

    iget v6, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 186
    .local v6, "scale":F
    invoke-direct/range {p0 .. p0}, Landroid/app/ResourcesManager;->getThemeConfig()Landroid/content/res/ThemeConfig;

    move-result-object v27

    .line 187
    .local v27, "themeConfig":Landroid/content/res/ThemeConfig;
    if-eqz p7, :cond_0

    new-instance v24, Landroid/content/res/Configuration;

    move-object/from16 v0, v24

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 189
    .local v24, "overrideConfigCopy":Landroid/content/res/Configuration;
    :goto_0
    new-instance v2, Landroid/content/res/ResourcesKey;

    invoke-direct/range {p0 .. p0}, Landroid/app/ResourcesManager;->getThemeConfig()Landroid/content/res/ThemeConfig;

    move-result-object v8

    move-object/from16 v3, p1

    move/from16 v4, p5

    move-object/from16 v5, p7

    move/from16 v7, p10

    invoke-direct/range {v2 .. v8}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;ILandroid/content/res/Configuration;FZLandroid/content/res/ThemeConfig;)V

    .line 192
    .local v2, "key":Landroid/content/res/ResourcesKey;
    monitor-enter p0

    .line 196
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/ref/WeakReference;

    .line 197
    .local v28, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v28, :cond_1

    invoke-virtual/range {v28 .. v28}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    move-object/from16 v25, v3

    .line 199
    .local v25, "r":Landroid/content/res/Resources;
    :goto_1
    if-eqz v25, :cond_2

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 203
    monitor-exit p0

    move-object/from16 v17, v25

    .line 313
    :goto_2
    return-object v17

    .line 187
    .end local v2    # "key":Landroid/content/res/ResourcesKey;
    .end local v24    # "overrideConfigCopy":Landroid/content/res/Configuration;
    .end local v25    # "r":Landroid/content/res/Resources;
    .end local v28    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_0
    const/16 v24, 0x0

    goto :goto_0

    .line 197
    .restart local v2    # "key":Landroid/content/res/ResourcesKey;
    .restart local v24    # "overrideConfigCopy":Landroid/content/res/Configuration;
    .restart local v28    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_1
    const/16 v25, 0x0

    goto :goto_1

    .line 205
    .restart local v25    # "r":Landroid/content/res/Resources;
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    new-instance v7, Landroid/content/res/AssetManager;

    invoke-direct {v7}, Landroid/content/res/AssetManager;-><init>()V

    .line 213
    .local v7, "assets":Landroid/content/res/AssetManager;
    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Landroid/content/res/AssetManager;->setAppName(Ljava/lang/String;)V

    .line 214
    move/from16 v0, p10

    invoke-virtual {v7, v0}, Landroid/content/res/AssetManager;->setThemeSupport(Z)V

    .line 218
    if-eqz p1, :cond_3

    .line 219
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 220
    const/16 v17, 0x0

    goto :goto_2

    .line 205
    .end local v7    # "assets":Landroid/content/res/AssetManager;
    .end local v25    # "r":Landroid/content/res/Resources;
    .end local v28    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 224
    .restart local v7    # "assets":Landroid/content/res/AssetManager;
    .restart local v25    # "r":Landroid/content/res/Resources;
    .restart local v28    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_3
    if-eqz p2, :cond_5

    .line 225
    move-object/from16 v13, p2

    .local v13, "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_3
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    aget-object v26, v13, v19

    .line 226
    .local v26, "splitResDir":Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    .line 227
    const/16 v17, 0x0

    goto :goto_2

    .line 225
    :cond_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 232
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v19    # "i$":I
    .end local v22    # "len$":I
    .end local v26    # "splitResDir":Ljava/lang/String;
    :cond_5
    if-eqz p3, :cond_6

    .line 233
    move-object/from16 v13, p3

    .restart local v13    # "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v22, v0

    .restart local v22    # "len$":I
    const/16 v19, 0x0

    .restart local v19    # "i$":I
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    aget-object v8, v13, v19

    .line 234
    .local v8, "idmapPath":Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 238
    .end local v8    # "idmapPath":Ljava/lang/String;
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v19    # "i$":I
    .end local v22    # "len$":I
    :cond_6
    if-eqz p4, :cond_8

    .line 239
    move-object/from16 v13, p4

    .restart local v13    # "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v22, v0

    .restart local v22    # "len$":I
    const/16 v19, 0x0

    .restart local v19    # "i$":I
    :goto_5
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    aget-object v23, v13, v19

    .line 240
    .local v23, "libDir":Ljava/lang/String;
    const-string v3, ".apk"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 243
    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_7

    .line 244
    const-string v3, "ResourcesManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Asset path \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' does not exist or contains no resources."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_7
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 252
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v19    # "i$":I
    .end local v22    # "len$":I
    .end local v23    # "libDir":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v15

    .line 254
    .local v15, "dm":Landroid/util/DisplayMetrics;
    if-nez p5, :cond_f

    const/16 v21, 0x1

    .line 255
    .local v21, "isDefaultDisplay":Z
    :goto_6
    invoke-virtual {v2}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v18

    .line 256
    .local v18, "hasOverrideConfig":Z
    if-eqz v21, :cond_9

    if-eqz v18, :cond_10

    .line 257
    :cond_9
    new-instance v14, Landroid/content/res/Configuration;

    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v14, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 258
    .local v14, "config":Landroid/content/res/Configuration;
    if-nez v21, :cond_a

    .line 259
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v14}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 261
    :cond_a
    if-eqz v18, :cond_b

    .line 262
    iget-object v3, v2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v14, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 269
    :cond_b
    :goto_7
    const/16 v20, 0x0

    .line 271
    .local v20, "iconsAttached":Z
    if-eqz v14, :cond_d

    invoke-virtual/range {p9 .. p9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v3

    if-nez v3, :cond_d

    .line 272
    if-nez v27, :cond_c

    .line 274
    :try_start_2
    invoke-virtual/range {p9 .. p9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Landroid/content/res/ThemeConfig;->getBootTheme(Landroid/content/ContentResolver;)Landroid/content/res/ThemeConfig;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v27

    .line 281
    :cond_c
    :goto_8
    if-eqz p10, :cond_11

    .line 282
    if-eqz v27, :cond_d

    .line 283
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v7, v1}, Landroid/app/ResourcesManager;->attachThemeAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z

    .line 284
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v7, v1}, Landroid/app/ResourcesManager;->attachCommonAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z

    .line 285
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v7, v1}, Landroid/app/ResourcesManager;->attachIconAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z

    move-result v20

    .line 294
    :cond_d
    :goto_9
    new-instance v25, Landroid/content/res/MiuiResources;

    .end local v25    # "r":Landroid/content/res/Resources;
    move-object/from16 v0, v25

    move-object/from16 v1, p8

    invoke-direct {v0, v7, v15, v14, v1}, Landroid/content/res/MiuiResources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 295
    .restart local v25    # "r":Landroid/content/res/Resources;
    if-eqz v20, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/app/ResourcesManager;->setActivityIcons(Landroid/content/res/Resources;)V

    .line 300
    :cond_e
    monitor-enter p0

    .line 301
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .end local v28    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    check-cast v28, Ljava/lang/ref/WeakReference;

    .line 302
    .restart local v28    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v28, :cond_12

    invoke-virtual/range {v28 .. v28}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    move-object/from16 v17, v3

    .line 303
    .local v17, "existing":Landroid/content/res/Resources;
    :goto_a
    if-eqz v17, :cond_13

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 306
    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->close()V

    .line 307
    monitor-exit p0

    goto/16 :goto_2

    .line 314
    .end local v17    # "existing":Landroid/content/res/Resources;
    .end local v28    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 254
    .end local v14    # "config":Landroid/content/res/Configuration;
    .end local v18    # "hasOverrideConfig":Z
    .end local v20    # "iconsAttached":Z
    .end local v21    # "isDefaultDisplay":Z
    .restart local v28    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_f
    const/16 v21, 0x0

    goto/16 :goto_6

    .line 266
    .restart local v18    # "hasOverrideConfig":Z
    .restart local v21    # "isDefaultDisplay":Z
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    .restart local v14    # "config":Landroid/content/res/Configuration;
    goto :goto_7

    .line 275
    .restart local v20    # "iconsAttached":Z
    :catch_0
    move-exception v16

    .line 276
    .local v16, "e":Ljava/lang/Exception;
    const-string v3, "ResourcesManager"

    const-string v4, "ThemeConfig.getBootTheme failed, falling back to system theme"

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    invoke-static {}, Landroid/content/res/ThemeConfig;->getSystemTheme()Landroid/content/res/ThemeConfig;

    move-result-object v27

    goto :goto_8

    .line 287
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_11
    if-eqz v27, :cond_d

    const-string/jumbo v3, "system"

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/ThemeConfig;->getFontPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 290
    const/4 v3, 0x1

    invoke-static {v3}, Landroid/graphics/Typeface;->recreateDefaults(Z)V

    goto :goto_9

    .line 302
    :cond_12
    const/16 v17, 0x0

    goto :goto_a

    .line 311
    .restart local v17    # "existing":Landroid/content/res/Resources;
    :cond_13
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v25

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v17, v25

    goto/16 :goto_2
.end method

.method public getTopLevelThemedResources(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/res/CompatibilityInfo;Z)Landroid/content/res/Resources;
    .locals 19
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "displayId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "themePackageName"    # Ljava/lang/String;
    .param p5, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p6, "isThemeable"    # Z

    .prologue
    .line 329
    new-instance v10, Landroid/content/res/ThemeConfig$Builder;

    invoke-direct {v10}, Landroid/content/res/ThemeConfig$Builder;-><init>()V

    .line 330
    .local v10, "builder":Landroid/content/res/ThemeConfig$Builder;
    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Landroid/content/res/ThemeConfig$Builder;->defaultOverlay(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    .line 331
    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Landroid/content/res/ThemeConfig$Builder;->defaultIcon(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    .line 332
    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Landroid/content/res/ThemeConfig$Builder;->defaultFont(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    .line 333
    invoke-virtual {v10}, Landroid/content/res/ThemeConfig$Builder;->build()Landroid/content/res/ThemeConfig;

    move-result-object v8

    .line 335
    .local v8, "themeConfig":Landroid/content/res/ThemeConfig;
    new-instance v2, Landroid/content/res/ResourcesKey;

    const/4 v5, 0x0

    move-object/from16 v0, p5

    iget v6, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v7, p6

    invoke-direct/range {v2 .. v8}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;ILandroid/content/res/Configuration;FZLandroid/content/res/ThemeConfig;)V

    .line 338
    .local v2, "key":Landroid/content/res/ResourcesKey;
    monitor-enter p0

    .line 339
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/ref/WeakReference;

    .line 340
    .local v18, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    move-object/from16 v17, v3

    .line 341
    .local v17, "r":Landroid/content/res/Resources;
    :goto_0
    if-eqz v17, :cond_1

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 346
    monitor-exit p0

    move-object/from16 v13, v17

    .line 402
    :goto_1
    return-object v13

    .line 340
    .end local v17    # "r":Landroid/content/res/Resources;
    :cond_0
    const/16 v17, 0x0

    goto :goto_0

    .line 348
    .restart local v17    # "r":Landroid/content/res/Resources;
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    new-instance v9, Landroid/content/res/AssetManager;

    invoke-direct {v9}, Landroid/content/res/AssetManager;-><init>()V

    .line 351
    .local v9, "assets":Landroid/content/res/AssetManager;
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Landroid/content/res/AssetManager;->setAppName(Ljava/lang/String;)V

    .line 352
    move/from16 v0, p6

    invoke-virtual {v9, v0}, Landroid/content/res/AssetManager;->setThemeSupport(Z)V

    .line 353
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 354
    const/4 v13, 0x0

    goto :goto_1

    .line 348
    .end local v9    # "assets":Landroid/content/res/AssetManager;
    .end local v17    # "r":Landroid/content/res/Resources;
    .end local v18    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 358
    .restart local v9    # "assets":Landroid/content/res/AssetManager;
    .restart local v17    # "r":Landroid/content/res/Resources;
    .restart local v18    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v12

    .line 360
    .local v12, "dm":Landroid/util/DisplayMetrics;
    if-nez p2, :cond_8

    const/16 v16, 0x1

    .line 361
    .local v16, "isDefaultDisplay":Z
    :goto_2
    invoke-virtual {v2}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v14

    .line 362
    .local v14, "hasOverrideConfig":Z
    if-eqz v16, :cond_3

    if-eqz v14, :cond_9

    .line 363
    :cond_3
    new-instance v11, Landroid/content/res/Configuration;

    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 364
    .local v11, "config":Landroid/content/res/Configuration;
    if-nez v16, :cond_4

    .line 365
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 367
    :cond_4
    if-eqz v14, :cond_5

    .line 368
    iget-object v3, v2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v11, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 374
    :cond_5
    :goto_3
    const/4 v15, 0x0

    .line 375
    .local v15, "iconsAttached":Z
    if-eqz p6, :cond_6

    .line 377
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Landroid/app/ResourcesManager;->attachThemeAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z

    .line 378
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Landroid/app/ResourcesManager;->attachCommonAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z

    .line 379
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Landroid/app/ResourcesManager;->attachIconAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z

    move-result v15

    .line 381
    :cond_6
    new-instance v17, Landroid/content/res/Resources;

    .end local v17    # "r":Landroid/content/res/Resources;
    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-direct {v0, v9, v12, v11, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 382
    .restart local v17    # "r":Landroid/content/res/Resources;
    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/app/ResourcesManager;->setActivityIcons(Landroid/content/res/Resources;)V

    .line 390
    :cond_7
    monitor-enter p0

    .line 391
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    check-cast v18, Ljava/lang/ref/WeakReference;

    .line 392
    .restart local v18    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v18, :cond_a

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    move-object v13, v3

    .line 393
    .local v13, "existing":Landroid/content/res/Resources;
    :goto_4
    if-eqz v13, :cond_b

    invoke-virtual {v13}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 396
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->close()V

    .line 397
    monitor-exit p0

    goto/16 :goto_1

    .line 403
    .end local v13    # "existing":Landroid/content/res/Resources;
    .end local v18    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 360
    .end local v11    # "config":Landroid/content/res/Configuration;
    .end local v14    # "hasOverrideConfig":Z
    .end local v15    # "iconsAttached":Z
    .end local v16    # "isDefaultDisplay":Z
    .restart local v18    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_8
    const/16 v16, 0x0

    goto :goto_2

    .line 371
    .restart local v14    # "hasOverrideConfig":Z
    .restart local v16    # "isDefaultDisplay":Z
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    .restart local v11    # "config":Landroid/content/res/Configuration;
    goto :goto_3

    .line 392
    .restart local v15    # "iconsAttached":Z
    :cond_a
    const/4 v13, 0x0

    goto :goto_4

    .line 401
    .restart local v13    # "existing":Landroid/content/res/Resources;
    :cond_b
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v13, v17

    goto/16 :goto_1
.end method
