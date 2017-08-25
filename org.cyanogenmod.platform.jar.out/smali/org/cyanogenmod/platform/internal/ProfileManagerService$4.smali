.class Lorg/cyanogenmod/platform/internal/ProfileManagerService$4;
.super Ljava/lang/Object;
.source "ProfileManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/ProfileManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$4;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 148
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 160
    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    .line 150
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "cyanogenmod.platform.app.profiles.PROFILES_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "newState":Landroid/content/Intent;
    const-string v2, "profile_state"

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$4;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$600(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 155
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_0

    .line 156
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$4;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->maybeApplyActiveProfile()V
    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$700(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
