.class public Lcyanogenmod/os/Build;
.super Ljava/lang/Object;
.source "Build.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/os/Build$CM_VERSION_CODES;,
        Lcyanogenmod/os/Build$CM_VERSION;
    }
.end annotation


# static fields
.field public static final CYANOGENMOD_DISPLAY_VERSION:Ljava/lang/String;

.field public static final CYANOGENMOD_VERSION:Ljava/lang/String;

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final sdkMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const-string v0, "ro.cm.version"

    invoke-static {v0}, Lcyanogenmod/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcyanogenmod/os/Build;->CYANOGENMOD_VERSION:Ljava/lang/String;

    .line 34
    const-string v0, "ro.cm.display.version"

    invoke-static {v0}, Lcyanogenmod/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcyanogenmod/os/Build;->CYANOGENMOD_DISPLAY_VERSION:Ljava/lang/String;

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcyanogenmod/os/Build;->sdkMap:Landroid/util/SparseArray;

    .line 40
    sget-object v0, Lcyanogenmod/os/Build;->sdkMap:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "Apricot"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    sget-object v0, Lcyanogenmod/os/Build;->sdkMap:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "Boysenberry"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    sget-object v0, Lcyanogenmod/os/Build;->sdkMap:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "Cantaloupe"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    sget-object v0, Lcyanogenmod/os/Build;->sdkMap:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "Dragon Fruit"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    sget-object v0, Lcyanogenmod/os/Build;->sdkMap:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "Elderberry"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    sget-object v0, Lcyanogenmod/os/Build;->sdkMap:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string v2, "Fig"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public static getNameForSDKInt(I)Ljava/lang/String;
    .locals 2
    .param p0, "sdkInt"    # I

    .prologue
    .line 180
    sget-object v1, Lcyanogenmod/os/Build;->sdkMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    const-string v0, "unknown"

    .line 184
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "property"    # Ljava/lang/String;

    .prologue
    .line 188
    const-string v0, "unknown"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
