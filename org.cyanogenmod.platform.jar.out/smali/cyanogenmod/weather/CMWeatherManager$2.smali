.class Lcyanogenmod/weather/CMWeatherManager$2;
.super Lcyanogenmod/weather/IRequestInfoListener$Stub;
.source "CMWeatherManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/weather/CMWeatherManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcyanogenmod/weather/CMWeatherManager;


# direct methods
.method constructor <init>(Lcyanogenmod/weather/CMWeatherManager;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcyanogenmod/weather/CMWeatherManager$2;->this$0:Lcyanogenmod/weather/CMWeatherManager;

    invoke-direct {p0}, Lcyanogenmod/weather/IRequestInfoListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onLookupCityRequestCompleted(Lcyanogenmod/weather/RequestInfo;ILjava/util/List;)V
    .locals 3
    .param p1, "requestInfo"    # Lcyanogenmod/weather/RequestInfo;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcyanogenmod/weather/RequestInfo;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcyanogenmod/weather/WeatherLocation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 353
    .local p3, "weatherLocations":Ljava/util/List;, "Ljava/util/List<Lcyanogenmod/weather/WeatherLocation;>;"
    iget-object v1, p0, Lcyanogenmod/weather/CMWeatherManager$2;->this$0:Lcyanogenmod/weather/CMWeatherManager;

    # getter for: Lcyanogenmod/weather/CMWeatherManager;->mLookupNameRequestListeners:Ljava/util/Map;
    invoke-static {v1}, Lcyanogenmod/weather/CMWeatherManager;->access$300(Lcyanogenmod/weather/CMWeatherManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/weather/CMWeatherManager$LookupCityRequestListener;

    .line 355
    .local v0, "listener":Lcyanogenmod/weather/CMWeatherManager$LookupCityRequestListener;
    if-eqz v0, :cond_0

    .line 356
    iget-object v1, p0, Lcyanogenmod/weather/CMWeatherManager$2;->this$0:Lcyanogenmod/weather/CMWeatherManager;

    # getter for: Lcyanogenmod/weather/CMWeatherManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcyanogenmod/weather/CMWeatherManager;->access$100(Lcyanogenmod/weather/CMWeatherManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcyanogenmod/weather/CMWeatherManager$2$2;

    invoke-direct {v2, p0, v0, p2, p3}, Lcyanogenmod/weather/CMWeatherManager$2$2;-><init>(Lcyanogenmod/weather/CMWeatherManager$2;Lcyanogenmod/weather/CMWeatherManager$LookupCityRequestListener;ILjava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 363
    :cond_0
    return-void
.end method

.method public onWeatherRequestCompleted(Lcyanogenmod/weather/RequestInfo;ILcyanogenmod/weather/WeatherInfo;)V
    .locals 3
    .param p1, "requestInfo"    # Lcyanogenmod/weather/RequestInfo;
    .param p2, "status"    # I
    .param p3, "weatherInfo"    # Lcyanogenmod/weather/WeatherInfo;

    .prologue
    .line 337
    iget-object v1, p0, Lcyanogenmod/weather/CMWeatherManager$2;->this$0:Lcyanogenmod/weather/CMWeatherManager;

    # getter for: Lcyanogenmod/weather/CMWeatherManager;->mWeatherUpdateRequestListeners:Ljava/util/Map;
    invoke-static {v1}, Lcyanogenmod/weather/CMWeatherManager;->access$200(Lcyanogenmod/weather/CMWeatherManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/weather/CMWeatherManager$WeatherUpdateRequestListener;

    .line 339
    .local v0, "listener":Lcyanogenmod/weather/CMWeatherManager$WeatherUpdateRequestListener;
    if-eqz v0, :cond_0

    .line 340
    iget-object v1, p0, Lcyanogenmod/weather/CMWeatherManager$2;->this$0:Lcyanogenmod/weather/CMWeatherManager;

    # getter for: Lcyanogenmod/weather/CMWeatherManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcyanogenmod/weather/CMWeatherManager;->access$100(Lcyanogenmod/weather/CMWeatherManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcyanogenmod/weather/CMWeatherManager$2$1;

    invoke-direct {v2, p0, v0, p2, p3}, Lcyanogenmod/weather/CMWeatherManager$2$1;-><init>(Lcyanogenmod/weather/CMWeatherManager$2;Lcyanogenmod/weather/CMWeatherManager$WeatherUpdateRequestListener;ILcyanogenmod/weather/WeatherInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 347
    :cond_0
    return-void
.end method
