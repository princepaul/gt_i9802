.class public abstract Lcyanogenmod/weatherservice/IWeatherProviderService$Stub;
.super Landroid/os/Binder;
.source "IWeatherProviderService.java"

# interfaces
.implements Lcyanogenmod/weatherservice/IWeatherProviderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/weatherservice/IWeatherProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/weatherservice/IWeatherProviderService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.weatherservice.IWeatherProviderService"

.field static final TRANSACTION_cancelOngoingRequests:I = 0x4

.field static final TRANSACTION_cancelRequest:I = 0x5

.field static final TRANSACTION_processCityNameLookupRequest:I = 0x2

.field static final TRANSACTION_processWeatherUpdateRequest:I = 0x1

.field static final TRANSACTION_setServiceClient:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "cyanogenmod.weatherservice.IWeatherProviderService"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/weatherservice/IWeatherProviderService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/weatherservice/IWeatherProviderService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 48
    if-nez p0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    .line 51
    :cond_0
    const-string v1, "cyanogenmod.weatherservice.IWeatherProviderService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcyanogenmod/weatherservice/IWeatherProviderService;

    if-eqz v1, :cond_1

    .line 53
    check-cast v0, Lcyanogenmod/weatherservice/IWeatherProviderService;

    goto :goto_0

    .line 55
    :cond_1
    new-instance v0, Lcyanogenmod/weatherservice/IWeatherProviderService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcyanogenmod/weatherservice/IWeatherProviderService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 59
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
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
    const/4 v1, 0x1

    .line 63
    sparse-switch p1, :sswitch_data_0

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 67
    :sswitch_0
    const-string v2, "cyanogenmod.weatherservice.IWeatherProviderService"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :sswitch_1
    const-string v2, "cyanogenmod.weatherservice.IWeatherProviderService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    sget-object v2, Lcyanogenmod/weather/RequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/weather/RequestInfo;

    .line 80
    .local v0, "_arg0":Lcyanogenmod/weather/RequestInfo;
    :goto_1
    invoke-virtual {p0, v0}, Lcyanogenmod/weatherservice/IWeatherProviderService$Stub;->processWeatherUpdateRequest(Lcyanogenmod/weather/RequestInfo;)V

    goto :goto_0

    .line 78
    .end local v0    # "_arg0":Lcyanogenmod/weather/RequestInfo;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcyanogenmod/weather/RequestInfo;
    goto :goto_1

    .line 85
    .end local v0    # "_arg0":Lcyanogenmod/weather/RequestInfo;
    :sswitch_2
    const-string v2, "cyanogenmod.weatherservice.IWeatherProviderService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    sget-object v2, Lcyanogenmod/weather/RequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/weather/RequestInfo;

    .line 93
    .restart local v0    # "_arg0":Lcyanogenmod/weather/RequestInfo;
    :goto_2
    invoke-virtual {p0, v0}, Lcyanogenmod/weatherservice/IWeatherProviderService$Stub;->processCityNameLookupRequest(Lcyanogenmod/weather/RequestInfo;)V

    goto :goto_0

    .line 91
    .end local v0    # "_arg0":Lcyanogenmod/weather/RequestInfo;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcyanogenmod/weather/RequestInfo;
    goto :goto_2

    .line 98
    .end local v0    # "_arg0":Lcyanogenmod/weather/RequestInfo;
    :sswitch_3
    const-string v2, "cyanogenmod.weatherservice.IWeatherProviderService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcyanogenmod/weatherservice/IWeatherProviderServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    move-result-object v0

    .line 101
    .local v0, "_arg0":Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;
    invoke-virtual {p0, v0}, Lcyanogenmod/weatherservice/IWeatherProviderService$Stub;->setServiceClient(Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;)V

    goto :goto_0

    .line 106
    .end local v0    # "_arg0":Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;
    :sswitch_4
    const-string v2, "cyanogenmod.weatherservice.IWeatherProviderService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcyanogenmod/weatherservice/IWeatherProviderService$Stub;->cancelOngoingRequests()V

    goto :goto_0

    .line 112
    :sswitch_5
    const-string v2, "cyanogenmod.weatherservice.IWeatherProviderService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 115
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcyanogenmod/weatherservice/IWeatherProviderService$Stub;->cancelRequest(I)V

    goto :goto_0

    .line 63
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method