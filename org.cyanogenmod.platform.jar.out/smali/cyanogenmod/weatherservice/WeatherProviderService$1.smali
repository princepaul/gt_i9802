.class Lcyanogenmod/weatherservice/WeatherProviderService$1;
.super Lcyanogenmod/weatherservice/IWeatherProviderService$Stub;
.source "WeatherProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/weatherservice/WeatherProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcyanogenmod/weatherservice/WeatherProviderService;


# direct methods
.method constructor <init>(Lcyanogenmod/weatherservice/WeatherProviderService;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcyanogenmod/weatherservice/WeatherProviderService$1;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    invoke-direct {p0}, Lcyanogenmod/weatherservice/IWeatherProviderService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelOngoingRequests()V
    .locals 5

    .prologue
    .line 111
    iget-object v2, p0, Lcyanogenmod/weatherservice/WeatherProviderService$1;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    # getter for: Lcyanogenmod/weatherservice/WeatherProviderService;->mWeakRequestsSet:Ljava/util/Set;
    invoke-static {v2}, Lcyanogenmod/weatherservice/WeatherProviderService;->access$100(Lcyanogenmod/weatherservice/WeatherProviderService;)Ljava/util/Set;

    move-result-object v3

    monitor-enter v3

    .line 112
    :try_start_0
    iget-object v2, p0, Lcyanogenmod/weatherservice/WeatherProviderService$1;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    # getter for: Lcyanogenmod/weatherservice/WeatherProviderService;->mWeakRequestsSet:Ljava/util/Set;
    invoke-static {v2}, Lcyanogenmod/weatherservice/WeatherProviderService;->access$100(Lcyanogenmod/weatherservice/WeatherProviderService;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcyanogenmod/weatherservice/ServiceRequest;

    .line 113
    .local v1, "request":Lcyanogenmod/weatherservice/ServiceRequest;
    invoke-virtual {v1}, Lcyanogenmod/weatherservice/ServiceRequest;->cancel()V

    .line 114
    iget-object v2, p0, Lcyanogenmod/weatherservice/WeatherProviderService$1;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    # getter for: Lcyanogenmod/weatherservice/WeatherProviderService;->mWeakRequestsSet:Ljava/util/Set;
    invoke-static {v2}, Lcyanogenmod/weatherservice/WeatherProviderService;->access$100(Lcyanogenmod/weatherservice/WeatherProviderService;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 115
    iget-object v2, p0, Lcyanogenmod/weatherservice/WeatherProviderService$1;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    # getter for: Lcyanogenmod/weatherservice/WeatherProviderService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcyanogenmod/weatherservice/WeatherProviderService;->access$000(Lcyanogenmod/weatherservice/WeatherProviderService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 118
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "request":Lcyanogenmod/weatherservice/ServiceRequest;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    return-void
.end method

.method public cancelRequest(I)V
    .locals 5
    .param p1, "requestId"    # I

    .prologue
    .line 123
    iget-object v2, p0, Lcyanogenmod/weatherservice/WeatherProviderService$1;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    # getter for: Lcyanogenmod/weatherservice/WeatherProviderService;->mWeakRequestsSet:Ljava/util/Set;
    invoke-static {v2}, Lcyanogenmod/weatherservice/WeatherProviderService;->access$100(Lcyanogenmod/weatherservice/WeatherProviderService;)Ljava/util/Set;

    move-result-object v3

    monitor-enter v3

    .line 124
    :try_start_0
    iget-object v2, p0, Lcyanogenmod/weatherservice/WeatherProviderService$1;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    # getter for: Lcyanogenmod/weatherservice/WeatherProviderService;->mWeakRequestsSet:Ljava/util/Set;
    invoke-static {v2}, Lcyanogenmod/weatherservice/WeatherProviderService;->access$100(Lcyanogenmod/weatherservice/WeatherProviderService;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcyanogenmod/weatherservice/ServiceRequest;

    .line 125
    .local v1, "request":Lcyanogenmod/weatherservice/ServiceRequest;
    invoke-virtual {v1}, Lcyanogenmod/weatherservice/ServiceRequest;->getRequestInfo()Lcyanogenmod/weather/RequestInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcyanogenmod/weather/RequestInfo;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 126
    iget-object v2, p0, Lcyanogenmod/weatherservice/WeatherProviderService$1;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    # getter for: Lcyanogenmod/weatherservice/WeatherProviderService;->mWeakRequestsSet:Ljava/util/Set;
    invoke-static {v2}, Lcyanogenmod/weatherservice/WeatherProviderService;->access$100(Lcyanogenmod/weatherservice/WeatherProviderService;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {v1}, Lcyanogenmod/weatherservice/ServiceRequest;->cancel()V

    .line 128
    iget-object v2, p0, Lcyanogenmod/weatherservice/WeatherProviderService$1;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    # getter for: Lcyanogenmod/weatherservice/WeatherProviderService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcyanogenmod/weatherservice/WeatherProviderService;->access$000(Lcyanogenmod/weatherservice/WeatherProviderService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 133
    .end local v1    # "request":Lcyanogenmod/weatherservice/ServiceRequest;
    :cond_1
    monitor-exit v3

    .line 134
    return-void

    .line 133
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public processCityNameLookupRequest(Lcyanogenmod/weather/RequestInfo;)V
    .locals 2
    .param p1, "info"    # Lcyanogenmod/weather/RequestInfo;

    .prologue
    .line 101
    iget-object v0, p0, Lcyanogenmod/weatherservice/WeatherProviderService$1;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    # getter for: Lcyanogenmod/weatherservice/WeatherProviderService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcyanogenmod/weatherservice/WeatherProviderService;->access$000(Lcyanogenmod/weatherservice/WeatherProviderService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 102
    return-void
.end method

.method public processWeatherUpdateRequest(Lcyanogenmod/weather/RequestInfo;)V
    .locals 2
    .param p1, "info"    # Lcyanogenmod/weather/RequestInfo;

    .prologue
    .line 96
    iget-object v0, p0, Lcyanogenmod/weatherservice/WeatherProviderService$1;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    # getter for: Lcyanogenmod/weatherservice/WeatherProviderService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcyanogenmod/weatherservice/WeatherProviderService;->access$000(Lcyanogenmod/weatherservice/WeatherProviderService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 97
    return-void
.end method

.method public setServiceClient(Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;)V
    .locals 2
    .param p1, "client"    # Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    .prologue
    .line 106
    iget-object v0, p0, Lcyanogenmod/weatherservice/WeatherProviderService$1;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    # getter for: Lcyanogenmod/weatherservice/WeatherProviderService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcyanogenmod/weatherservice/WeatherProviderService;->access$000(Lcyanogenmod/weatherservice/WeatherProviderService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 107
    return-void
.end method
