.class final Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature$SettingsObserver;
.super Lcom/android/server/pm/UserContentObserver;
.source "LiveDisplayFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;


# direct methods
.method public constructor <init>(Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 153
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature$SettingsObserver;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;

    .line 154
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserContentObserver;-><init>(Landroid/os/Handler;)V

    .line 155
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 178
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature$SettingsObserver;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;

    invoke-virtual {v0, p2}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;->onSettingsChanged(Landroid/net/Uri;)V

    .line 179
    return-void
.end method

.method public varargs register([Landroid/net/Uri;)V
    .locals 7
    .param p1, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 158
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature$SettingsObserver;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;

    iget-object v5, v5, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 159
    .local v1, "cr":Landroid/content/ContentResolver;
    move-object v0, p1

    .local v0, "arr$":[Landroid/net/Uri;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 160
    .local v4, "uri":Landroid/net/Uri;
    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {v1, v4, v5, p0, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature$SettingsObserver;->observe()V

    .line 164
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature$SettingsObserver;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;

    iget-object v0, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 168
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature$SettingsObserver;->unobserve()V

    .line 169
    return-void
.end method

.method protected update()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature$SettingsObserver;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;->onSettingsChanged(Landroid/net/Uri;)V

    .line 174
    return-void
.end method
