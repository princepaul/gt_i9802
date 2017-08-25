.class final Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker$BinderService;
.super Lcyanogenmod/media/ICMAudioService$Stub;
.source "CMAudioServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;


# direct methods
.method private constructor <init>(Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;

    invoke-direct {p0}, Lcyanogenmod/media/ICMAudioService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;
    .param p2, "x1"    # Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker$1;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker$BinderService;-><init>(Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 111
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;

    # getter for: Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;->access$200(Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.DUMP"

    const-string v5, "CMAudioServiceBroker"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 114
    const-string v3, "CMAudio Service State:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    const/4 v3, -0x1

    :try_start_0
    invoke-virtual {p0, v3}, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker$BinderService;->listAudioSessions(I)Ljava/util/List;

    move-result-object v2

    .line 117
    .local v2, "sessions":Ljava/util/List;, "Ljava/util/List<Lcyanogenmod/media/AudioSessionInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 118
    const-string v3, "  Audio sessions:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcyanogenmod/media/AudioSessionInfo;

    .line 120
    .local v1, "info":Lcyanogenmod/media/AudioSessionInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcyanogenmod/media/AudioSessionInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcyanogenmod/media/AudioSessionInfo;
    .end local v2    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcyanogenmod/media/AudioSessionInfo;>;"
    :catch_0
    move-exception v3

    .line 128
    :cond_0
    :goto_1
    return-void

    .line 123
    .restart local v2    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcyanogenmod/media/AudioSessionInfo;>;"
    :cond_1
    const-string v3, "  No active audio sessions"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public listAudioSessions(I)Ljava/util/List;
    .locals 1
    .param p1, "streamType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcyanogenmod/media/AudioSessionInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;

    # invokes: Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;->checkPermission()V
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;->access$100(Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;)V

    .line 106
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcyanogenmod/media/ICMAudioService;

    invoke-interface {v0, p1}, Lcyanogenmod/media/ICMAudioService;->listAudioSessions(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
