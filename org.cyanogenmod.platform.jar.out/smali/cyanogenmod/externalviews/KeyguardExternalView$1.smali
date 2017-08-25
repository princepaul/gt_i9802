.class Lcyanogenmod/externalviews/KeyguardExternalView$1;
.super Ljava/lang/Object;
.source "KeyguardExternalView.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/externalviews/KeyguardExternalView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcyanogenmod/externalviews/KeyguardExternalView;


# direct methods
.method constructor <init>(Lcyanogenmod/externalviews/KeyguardExternalView;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 114
    :try_start_0
    invoke-static {p2}, Lcyanogenmod/externalviews/IExternalViewProviderFactory$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/externalviews/IExternalViewProviderFactory;

    move-result-object v1

    .line 115
    .local v1, "factory":Lcyanogenmod/externalviews/IExternalViewProviderFactory;
    if-eqz v1, :cond_2

    .line 116
    iget-object v2, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcyanogenmod/externalviews/IExternalViewProviderFactory;->createExternalView(Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;

    move-result-object v3

    # setter for: Lcyanogenmod/externalviews/KeyguardExternalView;->mExternalViewProvider:Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;
    invoke-static {v2, v3}, Lcyanogenmod/externalviews/KeyguardExternalView;->access$002(Lcyanogenmod/externalviews/KeyguardExternalView;Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;)Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;

    .line 118
    iget-object v2, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    # getter for: Lcyanogenmod/externalviews/KeyguardExternalView;->mExternalViewProvider:Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;
    invoke-static {v2}, Lcyanogenmod/externalviews/KeyguardExternalView;->access$000(Lcyanogenmod/externalviews/KeyguardExternalView;)Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 119
    iget-object v2, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    # getter for: Lcyanogenmod/externalviews/KeyguardExternalView;->mExternalViewProvider:Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;
    invoke-static {v2}, Lcyanogenmod/externalviews/KeyguardExternalView;->access$000(Lcyanogenmod/externalviews/KeyguardExternalView;)Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    # getter for: Lcyanogenmod/externalviews/KeyguardExternalView;->mKeyguardExternalViewCallbacks:Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;
    invoke-static {v3}, Lcyanogenmod/externalviews/KeyguardExternalView;->access$100(Lcyanogenmod/externalviews/KeyguardExternalView;)Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;

    move-result-object v3

    invoke-interface {v2, v3}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;->registerCallback(Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;)V

    .line 121
    iget-object v2, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    # setter for: Lcyanogenmod/externalviews/KeyguardExternalView;->mService:Landroid/os/IBinder;
    invoke-static {v2, p2}, Lcyanogenmod/externalviews/KeyguardExternalView;->access$202(Lcyanogenmod/externalviews/KeyguardExternalView;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 122
    iget-object v2, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    # getter for: Lcyanogenmod/externalviews/KeyguardExternalView;->mService:Landroid/os/IBinder;
    invoke-static {v2}, Lcyanogenmod/externalviews/KeyguardExternalView;->access$200(Lcyanogenmod/externalviews/KeyguardExternalView;)Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 123
    iget-object v2, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    # invokes: Lcyanogenmod/externalviews/KeyguardExternalView;->executeQueue()V
    invoke-static {v2}, Lcyanogenmod/externalviews/KeyguardExternalView;->access$300(Lcyanogenmod/externalviews/KeyguardExternalView;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 134
    .end local v1    # "factory":Lcyanogenmod/externalviews/IExternalViewProviderFactory;
    :goto_0
    iget-object v2, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    # getter for: Lcyanogenmod/externalviews/KeyguardExternalView;->mService:Landroid/os/IBinder;
    invoke-static {v2}, Lcyanogenmod/externalviews/KeyguardExternalView;->access$200(Lcyanogenmod/externalviews/KeyguardExternalView;)Landroid/os/IBinder;

    move-result-object v2

    if-eq v2, p2, :cond_0

    if-eqz p2, :cond_0

    .line 135
    iget-object v2, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    # getter for: Lcyanogenmod/externalviews/KeyguardExternalView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcyanogenmod/externalviews/KeyguardExternalView;->access$600(Lcyanogenmod/externalviews/KeyguardExternalView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    # getter for: Lcyanogenmod/externalviews/KeyguardExternalView;->mServiceConnection:Landroid/content/ServiceConnection;
    invoke-static {v3}, Lcyanogenmod/externalviews/KeyguardExternalView;->access$500(Lcyanogenmod/externalviews/KeyguardExternalView;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 137
    :cond_0
    return-void

    .line 125
    .restart local v1    # "factory":Lcyanogenmod/externalviews/IExternalViewProviderFactory;
    :cond_1
    :try_start_1
    # getter for: Lcyanogenmod/externalviews/KeyguardExternalView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcyanogenmod/externalviews/KeyguardExternalView;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to get external view provider"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 130
    .end local v1    # "factory":Lcyanogenmod/externalviews/IExternalViewProviderFactory;
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    # getter for: Lcyanogenmod/externalviews/KeyguardExternalView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcyanogenmod/externalviews/KeyguardExternalView;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to connect to service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "factory":Lcyanogenmod/externalviews/IExternalViewProviderFactory;
    :cond_2
    :try_start_2
    # getter for: Lcyanogenmod/externalviews/KeyguardExternalView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcyanogenmod/externalviews/KeyguardExternalView;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to get external view provider factory"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 130
    .end local v1    # "factory":Lcyanogenmod/externalviews/IExternalViewProviderFactory;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    .line 141
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    # getter for: Lcyanogenmod/externalviews/KeyguardExternalView;->mExternalViewProvider:Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;
    invoke-static {v0}, Lcyanogenmod/externalviews/KeyguardExternalView;->access$000(Lcyanogenmod/externalviews/KeyguardExternalView;)Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    :try_start_0
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    # getter for: Lcyanogenmod/externalviews/KeyguardExternalView;->mExternalViewProvider:Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;
    invoke-static {v0}, Lcyanogenmod/externalviews/KeyguardExternalView;->access$000(Lcyanogenmod/externalviews/KeyguardExternalView;)Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;

    move-result-object v0

    iget-object v1, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    # getter for: Lcyanogenmod/externalviews/KeyguardExternalView;->mKeyguardExternalViewCallbacks:Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;
    invoke-static {v1}, Lcyanogenmod/externalviews/KeyguardExternalView;->access$100(Lcyanogenmod/externalviews/KeyguardExternalView;)Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;

    move-result-object v1

    invoke-interface {v0, v1}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;->unregisterCallback(Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    # setter for: Lcyanogenmod/externalviews/KeyguardExternalView;->mExternalViewProvider:Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;
    invoke-static {v0, v3}, Lcyanogenmod/externalviews/KeyguardExternalView;->access$002(Lcyanogenmod/externalviews/KeyguardExternalView;Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;)Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;

    .line 149
    :cond_0
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    # getter for: Lcyanogenmod/externalviews/KeyguardExternalView;->mService:Landroid/os/IBinder;
    invoke-static {v0}, Lcyanogenmod/externalviews/KeyguardExternalView;->access$200(Lcyanogenmod/externalviews/KeyguardExternalView;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    # getter for: Lcyanogenmod/externalviews/KeyguardExternalView;->mService:Landroid/os/IBinder;
    invoke-static {v0}, Lcyanogenmod/externalviews/KeyguardExternalView;->access$200(Lcyanogenmod/externalviews/KeyguardExternalView;)Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 151
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    # setter for: Lcyanogenmod/externalviews/KeyguardExternalView;->mService:Landroid/os/IBinder;
    invoke-static {v0, v3}, Lcyanogenmod/externalviews/KeyguardExternalView;->access$202(Lcyanogenmod/externalviews/KeyguardExternalView;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 153
    :cond_1
    return-void

    .line 145
    :catch_0
    move-exception v0

    goto :goto_0
.end method
