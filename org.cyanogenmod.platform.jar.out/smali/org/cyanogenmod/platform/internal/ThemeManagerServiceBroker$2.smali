.class Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$2;
.super Ljava/lang/Object;
.source "ThemeManagerServiceBroker.java"

# interfaces
.implements Lorg/cyanogenmod/platform/internal/common/BrokeredServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$2;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBrokeredServiceConnected()V
    .locals 5

    .prologue
    .line 276
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$2;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v3}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcyanogenmod/themes/IThemeService;

    .line 279
    .local v2, "themeService":Lcyanogenmod/themes/IThemeService;
    :try_start_0
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$2;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    # getter for: Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->mChangeListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->access$100(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 280
    .local v0, "N":I
    if-eqz v2, :cond_0

    if-lez v0, :cond_0

    .line 281
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 282
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$2;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    # getter for: Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->mChangeListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->access$100(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcyanogenmod/themes/IThemeChangeListener;

    invoke-interface {v2, v3}, Lcyanogenmod/themes/IThemeService;->requestThemeChangeUpdates(Lcyanogenmod/themes/IThemeChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    .end local v1    # "i":I
    :cond_0
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$2;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    # getter for: Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->mChangeListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->access$100(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 293
    .end local v0    # "N":I
    :goto_1
    :try_start_1
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$2;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    # getter for: Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->mProcessingListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->access$200(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 294
    .restart local v0    # "N":I
    if-eqz v2, :cond_1

    if-lez v0, :cond_1

    .line 295
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v0, :cond_1

    .line 296
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$2;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    # getter for: Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->mProcessingListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->access$200(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcyanogenmod/themes/IThemeProcessingListener;

    invoke-interface {v2, v3}, Lcyanogenmod/themes/IThemeService;->registerThemeProcessingListener(Lcyanogenmod/themes/IThemeProcessingListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 286
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catch_0
    move-exception v3

    .line 289
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$2;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    # getter for: Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->mChangeListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->access$100(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_1

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$2;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    # getter for: Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->mChangeListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->access$100(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v3

    .line 303
    .restart local v0    # "N":I
    :cond_1
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$2;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    # getter for: Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->mProcessingListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->access$200(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 305
    .end local v0    # "N":I
    :goto_3
    return-void

    .line 300
    :catch_1
    move-exception v3

    .line 303
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$2;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    # getter for: Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->mProcessingListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->access$200(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_3

    :catchall_1
    move-exception v3

    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$2;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    # getter for: Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->mProcessingListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->access$200(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v3
.end method

.method public onBrokeredServiceDisconnected()V
    .locals 0

    .prologue
    .line 309
    return-void
.end method
