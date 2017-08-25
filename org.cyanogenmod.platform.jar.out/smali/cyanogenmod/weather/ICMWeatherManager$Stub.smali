.class public abstract Lcyanogenmod/weather/ICMWeatherManager$Stub;
.super Landroid/os/Binder;
.source "ICMWeatherManager.java"

# interfaces
.implements Lcyanogenmod/weather/ICMWeatherManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/weather/ICMWeatherManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/weather/ICMWeatherManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.weather.ICMWeatherManager"

.field static final TRANSACTION_cancelRequest:I = 0x6

.field static final TRANSACTION_getActiveWeatherServiceProviderLabel:I = 0x5

.field static final TRANSACTION_lookupCity:I = 0x2

.field static final TRANSACTION_registerWeatherServiceProviderChangeListener:I = 0x3

.field static final TRANSACTION_unregisterWeatherServiceProviderChangeListener:I = 0x4

.field static final TRANSACTION_updateWeather:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "cyanogenmod.weather.ICMWeatherManager"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/weather/ICMWeatherManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/weather/ICMWeatherManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0

    .line 55
    :cond_0
    const-string v1, "cyanogenmod.weather.ICMWeatherManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcyanogenmod/weather/ICMWeatherManager;

    if-eqz v1, :cond_1

    .line 57
    check-cast v0, Lcyanogenmod/weather/ICMWeatherManager;

    goto :goto_0

    .line 59
    :cond_1
    new-instance v0, Lcyanogenmod/weather/ICMWeatherManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcyanogenmod/weather/ICMWeatherManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 63
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 67
    sparse-switch p1, :sswitch_data_0

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 71
    :sswitch_0
    const-string v3, "cyanogenmod.weather.ICMWeatherManager"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :sswitch_1
    const-string v3, "cyanogenmod.weather.ICMWeatherManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    sget-object v3, Lcyanogenmod/weather/RequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/weather/RequestInfo;

    .line 84
    .local v0, "_arg0":Lcyanogenmod/weather/RequestInfo;
    :goto_1
    invoke-virtual {p0, v0}, Lcyanogenmod/weather/ICMWeatherManager$Stub;->updateWeather(Lcyanogenmod/weather/RequestInfo;)V

    goto :goto_0

    .line 82
    .end local v0    # "_arg0":Lcyanogenmod/weather/RequestInfo;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcyanogenmod/weather/RequestInfo;
    goto :goto_1

    .line 89
    .end local v0    # "_arg0":Lcyanogenmod/weather/RequestInfo;
    :sswitch_2
    const-string v3, "cyanogenmod.weather.ICMWeatherManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    sget-object v3, Lcyanogenmod/weather/RequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/weather/RequestInfo;

    .line 97
    .restart local v0    # "_arg0":Lcyanogenmod/weather/RequestInfo;
    :goto_2
    invoke-virtual {p0, v0}, Lcyanogenmod/weather/ICMWeatherManager$Stub;->lookupCity(Lcyanogenmod/weather/RequestInfo;)V

    goto :goto_0

    .line 95
    .end local v0    # "_arg0":Lcyanogenmod/weather/RequestInfo;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcyanogenmod/weather/RequestInfo;
    goto :goto_2

    .line 102
    .end local v0    # "_arg0":Lcyanogenmod/weather/RequestInfo;
    :sswitch_3
    const-string v3, "cyanogenmod.weather.ICMWeatherManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcyanogenmod/weather/IWeatherServiceProviderChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;

    move-result-object v0

    .line 105
    .local v0, "_arg0":Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;
    invoke-virtual {p0, v0}, Lcyanogenmod/weather/ICMWeatherManager$Stub;->registerWeatherServiceProviderChangeListener(Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;)V

    goto :goto_0

    .line 110
    .end local v0    # "_arg0":Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;
    :sswitch_4
    const-string v3, "cyanogenmod.weather.ICMWeatherManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcyanogenmod/weather/IWeatherServiceProviderChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;

    move-result-object v0

    .line 113
    .restart local v0    # "_arg0":Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;
    invoke-virtual {p0, v0}, Lcyanogenmod/weather/ICMWeatherManager$Stub;->unregisterWeatherServiceProviderChangeListener(Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;)V

    goto :goto_0

    .line 118
    .end local v0    # "_arg0":Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;
    :sswitch_5
    const-string v3, "cyanogenmod.weather.ICMWeatherManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcyanogenmod/weather/ICMWeatherManager$Stub;->getActiveWeatherServiceProviderLabel()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_6
    const-string v3, "cyanogenmod.weather.ICMWeatherManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 129
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcyanogenmod/weather/ICMWeatherManager$Stub;->cancelRequest(I)V

    goto :goto_0

    .line 67
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
