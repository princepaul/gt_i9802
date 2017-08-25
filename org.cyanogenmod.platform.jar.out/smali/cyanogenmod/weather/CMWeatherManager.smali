.class public Lcyanogenmod/weather/CMWeatherManager;
.super Ljava/lang/Object;
.source "CMWeatherManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/weather/CMWeatherManager$WeatherServiceProviderChangeListener;,
        Lcyanogenmod/weather/CMWeatherManager$LookupCityRequestListener;,
        Lcyanogenmod/weather/CMWeatherManager$WeatherUpdateRequestListener;,
        Lcyanogenmod/weather/CMWeatherManager$RequestStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcyanogenmod/weather/CMWeatherManager;

.field private static sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLookupNameRequestListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcyanogenmod/weather/RequestInfo;",
            "Lcyanogenmod/weather/CMWeatherManager$LookupCityRequestListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviderChangeListener:Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;

.field private mProviderChangedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcyanogenmod/weather/CMWeatherManager$WeatherServiceProviderChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestInfoListener:Lcyanogenmod/weather/IRequestInfoListener;

.field private mWeatherUpdateRequestListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcyanogenmod/weather/RequestInfo;",
            "Lcyanogenmod/weather/CMWeatherManager$WeatherUpdateRequestListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcyanogenmod/weather/CMWeatherManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcyanogenmod/weather/CMWeatherManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mWeatherUpdateRequestListeners:Ljava/util/Map;

    .line 50
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mLookupNameRequestListeners:Ljava/util/Map;

    .line 53
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    .line 303
    new-instance v1, Lcyanogenmod/weather/CMWeatherManager$1;

    invoke-direct {v1, p0}, Lcyanogenmod/weather/CMWeatherManager$1;-><init>(Lcyanogenmod/weather/CMWeatherManager;)V

    iput-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangeListener:Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;

    .line 332
    new-instance v1, Lcyanogenmod/weather/CMWeatherManager$2;

    invoke-direct {v1, p0}, Lcyanogenmod/weather/CMWeatherManager$2;-><init>(Lcyanogenmod/weather/CMWeatherManager;)V

    iput-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mRequestInfoListener:Lcyanogenmod/weather/IRequestInfoListener;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 89
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_1

    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mContext:Landroid/content/Context;

    .line 90
    invoke-static {}, Lcyanogenmod/weather/CMWeatherManager;->getService()Lcyanogenmod/weather/ICMWeatherManager;

    move-result-object v1

    sput-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "org.cyanogenmod.weather"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    if-nez v1, :cond_0

    .line 94
    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->TAG:Ljava/lang/String;

    const-string v2, "Unable to bind the CMWeatherManagerService"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mHandler:Landroid/os/Handler;

    .line 97
    return-void

    :cond_1
    move-object v1, p1

    .line 89
    goto :goto_0
.end method

.method static synthetic access$000(Lcyanogenmod/weather/CMWeatherManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcyanogenmod/weather/CMWeatherManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lcyanogenmod/weather/CMWeatherManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcyanogenmod/weather/CMWeatherManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcyanogenmod/weather/CMWeatherManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcyanogenmod/weather/CMWeatherManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcyanogenmod/weather/CMWeatherManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcyanogenmod/weather/CMWeatherManager;->mWeatherUpdateRequestListeners:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcyanogenmod/weather/CMWeatherManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcyanogenmod/weather/CMWeatherManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcyanogenmod/weather/CMWeatherManager;->mLookupNameRequestListeners:Ljava/util/Map;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcyanogenmod/weather/CMWeatherManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    sget-object v0, Lcyanogenmod/weather/CMWeatherManager;->sInstance:Lcyanogenmod/weather/CMWeatherManager;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcyanogenmod/weather/CMWeatherManager;

    invoke-direct {v0, p0}, Lcyanogenmod/weather/CMWeatherManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcyanogenmod/weather/CMWeatherManager;->sInstance:Lcyanogenmod/weather/CMWeatherManager;

    .line 108
    :cond_0
    sget-object v0, Lcyanogenmod/weather/CMWeatherManager;->sInstance:Lcyanogenmod/weather/CMWeatherManager;

    return-object v0
.end method

.method public static getService()Lcyanogenmod/weather/ICMWeatherManager;
    .locals 2

    .prologue
    .line 113
    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    if-eqz v1, :cond_0

    .line 114
    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    .line 121
    .local v0, "binder":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 116
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_0
    const-string v1, "cmweather"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 117
    .restart local v0    # "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 118
    invoke-static {v0}, Lcyanogenmod/weather/ICMWeatherManager$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/weather/ICMWeatherManager;

    move-result-object v1

    sput-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    .line 119
    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    goto :goto_0

    .line 121
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelRequest(I)V
    .locals 1
    .param p1, "requestId"    # I

    .prologue
    .line 232
    sget-object v0, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    if-nez v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 237
    :cond_0
    :try_start_0
    sget-object v0, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    invoke-interface {v0, p1}, Lcyanogenmod/weather/ICMWeatherManager;->cancelRequest(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getActiveWeatherServiceProviderLabel()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 294
    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    if-nez v1, :cond_0

    .line 300
    :goto_0
    return-object v0

    .line 297
    :cond_0
    :try_start_0
    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    invoke-interface {v1}, Lcyanogenmod/weather/ICMWeatherManager;->getActiveWeatherServiceProviderLabel()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 298
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public lookupCity(Ljava/lang/String;Lcyanogenmod/weather/CMWeatherManager$LookupCityRequestListener;)I
    .locals 5
    .param p1, "city"    # Ljava/lang/String;
    .param p2, "listener"    # Lcyanogenmod/weather/CMWeatherManager$LookupCityRequestListener;

    .prologue
    const/4 v2, -0x1

    .line 211
    sget-object v3, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    if-nez v3, :cond_0

    .line 223
    :goto_0
    return v2

    .line 215
    :cond_0
    :try_start_0
    new-instance v3, Lcyanogenmod/weather/RequestInfo$Builder;

    iget-object v4, p0, Lcyanogenmod/weather/CMWeatherManager;->mRequestInfoListener:Lcyanogenmod/weather/IRequestInfoListener;

    invoke-direct {v3, v4}, Lcyanogenmod/weather/RequestInfo$Builder;-><init>(Lcyanogenmod/weather/IRequestInfoListener;)V

    invoke-virtual {v3, p1}, Lcyanogenmod/weather/RequestInfo$Builder;->setCityName(Ljava/lang/String;)Lcyanogenmod/weather/RequestInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcyanogenmod/weather/RequestInfo$Builder;->build()Lcyanogenmod/weather/RequestInfo;

    move-result-object v1

    .line 219
    .local v1, "info":Lcyanogenmod/weather/RequestInfo;
    if-eqz p2, :cond_1

    iget-object v3, p0, Lcyanogenmod/weather/CMWeatherManager;->mLookupNameRequestListeners:Ljava/util/Map;

    invoke-interface {v3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_1
    sget-object v3, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    invoke-interface {v3, v1}, Lcyanogenmod/weather/ICMWeatherManager;->lookupCity(Lcyanogenmod/weather/RequestInfo;)V

    .line 221
    invoke-virtual {v1}, Lcyanogenmod/weather/RequestInfo;->hashCode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 222
    .end local v1    # "info":Lcyanogenmod/weather/RequestInfo;
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public registerWeatherServiceProviderChangeListener(Lcyanogenmod/weather/CMWeatherManager$WeatherServiceProviderChangeListener;)V
    .locals 3
    .param p1, "listener"    # Lcyanogenmod/weather/CMWeatherManager$WeatherServiceProviderChangeListener;

    .prologue
    .line 249
    sget-object v0, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    if-nez v0, :cond_0

    .line 264
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    monitor-enter v1

    .line 252
    :try_start_0
    iget-object v0, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Listener already registered"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 255
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 257
    :try_start_2
    sget-object v0, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    iget-object v2, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangeListener:Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;

    invoke-interface {v0, v2}, Lcyanogenmod/weather/ICMWeatherManager;->registerWeatherServiceProviderChangeListener(Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    :cond_2
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 263
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public requestWeatherUpdate(Landroid/location/Location;Lcyanogenmod/weather/CMWeatherManager$WeatherUpdateRequestListener;)I
    .locals 7
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "listener"    # Lcyanogenmod/weather/CMWeatherManager$WeatherUpdateRequestListener;

    .prologue
    const/4 v3, -0x1

    .line 138
    sget-object v4, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    if-nez v4, :cond_0

    .line 156
    :goto_0
    return v3

    .line 143
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcyanogenmod/weather/CMWeatherManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "weather_temperature_unit"

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Lcyanogenmod/providers/CMSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 147
    .local v2, "tempUnit":I
    new-instance v4, Lcyanogenmod/weather/RequestInfo$Builder;

    iget-object v5, p0, Lcyanogenmod/weather/CMWeatherManager;->mRequestInfoListener:Lcyanogenmod/weather/IRequestInfoListener;

    invoke-direct {v4, v5}, Lcyanogenmod/weather/RequestInfo$Builder;-><init>(Lcyanogenmod/weather/IRequestInfoListener;)V

    invoke-virtual {v4, p1}, Lcyanogenmod/weather/RequestInfo$Builder;->setLocation(Landroid/location/Location;)Lcyanogenmod/weather/RequestInfo$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcyanogenmod/weather/RequestInfo$Builder;->setTemperatureUnit(I)Lcyanogenmod/weather/RequestInfo$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcyanogenmod/weather/RequestInfo$Builder;->build()Lcyanogenmod/weather/RequestInfo;

    move-result-object v1

    .line 152
    .local v1, "info":Lcyanogenmod/weather/RequestInfo;
    if-eqz p2, :cond_1

    iget-object v4, p0, Lcyanogenmod/weather/CMWeatherManager;->mWeatherUpdateRequestListeners:Ljava/util/Map;

    invoke-interface {v4, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_1
    sget-object v4, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    invoke-interface {v4, v1}, Lcyanogenmod/weather/ICMWeatherManager;->updateWeather(Lcyanogenmod/weather/RequestInfo;)V

    .line 154
    invoke-virtual {v1}, Lcyanogenmod/weather/RequestInfo;->hashCode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 155
    .end local v1    # "info":Lcyanogenmod/weather/RequestInfo;
    .end local v2    # "tempUnit":I
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public requestWeatherUpdate(Lcyanogenmod/weather/WeatherLocation;Lcyanogenmod/weather/CMWeatherManager$WeatherUpdateRequestListener;)I
    .locals 7
    .param p1, "weatherLocation"    # Lcyanogenmod/weather/WeatherLocation;
    .param p2, "listener"    # Lcyanogenmod/weather/CMWeatherManager$WeatherUpdateRequestListener;

    .prologue
    const/4 v3, -0x1

    .line 176
    sget-object v4, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    if-nez v4, :cond_0

    .line 194
    :goto_0
    return v3

    .line 181
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcyanogenmod/weather/CMWeatherManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "weather_temperature_unit"

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Lcyanogenmod/providers/CMSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 185
    .local v2, "tempUnit":I
    new-instance v4, Lcyanogenmod/weather/RequestInfo$Builder;

    iget-object v5, p0, Lcyanogenmod/weather/CMWeatherManager;->mRequestInfoListener:Lcyanogenmod/weather/IRequestInfoListener;

    invoke-direct {v4, v5}, Lcyanogenmod/weather/RequestInfo$Builder;-><init>(Lcyanogenmod/weather/IRequestInfoListener;)V

    invoke-virtual {v4, p1}, Lcyanogenmod/weather/RequestInfo$Builder;->setWeatherLocation(Lcyanogenmod/weather/WeatherLocation;)Lcyanogenmod/weather/RequestInfo$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcyanogenmod/weather/RequestInfo$Builder;->setTemperatureUnit(I)Lcyanogenmod/weather/RequestInfo$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcyanogenmod/weather/RequestInfo$Builder;->build()Lcyanogenmod/weather/RequestInfo;

    move-result-object v1

    .line 190
    .local v1, "info":Lcyanogenmod/weather/RequestInfo;
    if-eqz p2, :cond_1

    iget-object v4, p0, Lcyanogenmod/weather/CMWeatherManager;->mWeatherUpdateRequestListeners:Ljava/util/Map;

    invoke-interface {v4, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_1
    sget-object v4, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    invoke-interface {v4, v1}, Lcyanogenmod/weather/ICMWeatherManager;->updateWeather(Lcyanogenmod/weather/RequestInfo;)V

    .line 192
    invoke-virtual {v1}, Lcyanogenmod/weather/RequestInfo;->hashCode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 193
    .end local v1    # "info":Lcyanogenmod/weather/RequestInfo;
    .end local v2    # "tempUnit":I
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public unregisterWeatherServiceProviderChangeListener(Lcyanogenmod/weather/CMWeatherManager$WeatherServiceProviderChangeListener;)V
    .locals 3
    .param p1, "listener"    # Lcyanogenmod/weather/CMWeatherManager$WeatherServiceProviderChangeListener;

    .prologue
    .line 272
    sget-object v0, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    if-nez v0, :cond_0

    .line 287
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    monitor-enter v1

    .line 275
    :try_start_0
    iget-object v0, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 276
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Listener was never registered"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 278
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 279
    iget-object v0, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 281
    :try_start_2
    sget-object v0, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    iget-object v2, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangeListener:Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;

    invoke-interface {v0, v2}, Lcyanogenmod/weather/ICMWeatherManager;->unregisterWeatherServiceProviderChangeListener(Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 286
    :cond_2
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    goto :goto_1
.end method
