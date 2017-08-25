.class public Lorg/cyanogenmod/internal/util/CmLockPatternUtils;
.super Lcom/android/internal/widget/LockPatternUtils;
.source "CmLockPatternUtils.java"


# static fields
.field public static final ACTION_THIRD_PARTY_KEYGUARD_COMPONENT_CHANGED:Ljava/lang/String; = "org.cyanogenmod.internal.action.THIRD_PARTY_KEYGUARD_COMPONENT_CHANGED"

.field public static final THIRD_PARTY_KEYGUARD_COMPONENT:Ljava/lang/String; = "lockscreen.third_party"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 47
    iput-object p1, p0, Lorg/cyanogenmod/internal/util/CmLockPatternUtils;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method private getCurrentUser()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, -0x2

    return v0
.end method


# virtual methods
.method public getThirdPartyKeyguardComponent()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 83
    const-string v1, "lockscreen.third_party"

    invoke-direct {p0}, Lorg/cyanogenmod/internal/util/CmLockPatternUtils;->getCurrentUser()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/cyanogenmod/internal/util/CmLockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "component":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isThirdPartyKeyguardEnabled()Z
    .locals 3

    .prologue
    .line 91
    const-string v1, "lockscreen.third_party"

    invoke-direct {p0}, Lorg/cyanogenmod/internal/util/CmLockPatternUtils;->getCurrentUser()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/cyanogenmod/internal/util/CmLockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "component":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPassToSecurityView(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 104
    const-string v0, "lock_screen_pass_to_security_view"

    invoke-virtual {p0, v0, p1, p2}, Lorg/cyanogenmod/internal/util/CmLockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 105
    return-void
.end method

.method public setThirdPartyKeyguard(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 56
    if-eqz p1, :cond_1

    .line 58
    iget-object v2, p0, Lorg/cyanogenmod/internal/util/CmLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 59
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "cyanogenmod.permission.THIRD_PARTY_KEYGUARD"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 62
    .local v0, "hasThirdPartyKeyguardPermission":Z
    :goto_0
    if-nez v0, :cond_1

    .line 63
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "have "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cyanogenmod.permission.THIRD_PARTY_KEYGUARD"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    .end local v0    # "hasThirdPartyKeyguardPermission":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 68
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    const-string v3, "lockscreen.third_party"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-direct {p0}, Lorg/cyanogenmod/internal/util/CmLockPatternUtils;->getCurrentUser()I

    move-result v4

    invoke-virtual {p0, v3, v2, v4}, Lorg/cyanogenmod/internal/util/CmLockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 74
    iget-object v2, p0, Lorg/cyanogenmod/internal/util/CmLockPatternUtils;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "org.cyanogenmod.internal.action.THIRD_PARTY_KEYGUARD_COMPONENT_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 76
    return-void

    .line 68
    :cond_2
    const-string v2, ""

    goto :goto_1
.end method

.method public shouldPassToSecurityView(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 100
    const-string v0, "lock_screen_pass_to_security_view"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/cyanogenmod/internal/util/CmLockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method
