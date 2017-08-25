.class public abstract Lcyanogenmod/weather/IRequestInfoListener$Stub;
.super Landroid/os/Binder;
.source "IRequestInfoListener.java"

# interfaces
.implements Lcyanogenmod/weather/IRequestInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/weather/IRequestInfoListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/weather/IRequestInfoListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.weather.IRequestInfoListener"

.field static final TRANSACTION_onLookupCityRequestCompleted:I = 0x2

.field static final TRANSACTION_onWeatherRequestCompleted:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "cyanogenmod.weather.IRequestInfoListener"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/weather/IRequestInfoListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/weather/IRequestInfoListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 39
    if-nez p0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    .line 42
    :cond_0
    const-string v1, "cyanogenmod.weather.IRequestInfoListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 43
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcyanogenmod/weather/IRequestInfoListener;

    if-eqz v1, :cond_1

    .line 44
    check-cast v0, Lcyanogenmod/weather/IRequestInfoListener;

    goto :goto_0

    .line 46
    :cond_1
    new-instance v0, Lcyanogenmod/weather/IRequestInfoListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcyanogenmod/weather/IRequestInfoListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 50
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v4, 0x1

    .line 54
    sparse-switch p1, :sswitch_data_0

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 58
    :sswitch_0
    const-string v5, "cyanogenmod.weather.IRequestInfoListener"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :sswitch_1
    const-string v5, "cyanogenmod.weather.IRequestInfoListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 66
    sget-object v5, Lcyanogenmod/weather/RequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/weather/RequestInfo;

    .line 72
    .local v0, "_arg0":Lcyanogenmod/weather/RequestInfo;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 74
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 75
    sget-object v5, Lcyanogenmod/weather/WeatherInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcyanogenmod/weather/WeatherInfo;

    .line 80
    .local v2, "_arg2":Lcyanogenmod/weather/WeatherInfo;
    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Lcyanogenmod/weather/IRequestInfoListener$Stub;->onWeatherRequestCompleted(Lcyanogenmod/weather/RequestInfo;ILcyanogenmod/weather/WeatherInfo;)V

    goto :goto_0

    .line 69
    .end local v0    # "_arg0":Lcyanogenmod/weather/RequestInfo;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcyanogenmod/weather/WeatherInfo;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcyanogenmod/weather/RequestInfo;
    goto :goto_1

    .line 78
    .restart local v1    # "_arg1":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcyanogenmod/weather/WeatherInfo;
    goto :goto_2

    .line 85
    .end local v0    # "_arg0":Lcyanogenmod/weather/RequestInfo;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcyanogenmod/weather/WeatherInfo;
    :sswitch_2
    const-string v5, "cyanogenmod.weather.IRequestInfoListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 88
    sget-object v5, Lcyanogenmod/weather/RequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/weather/RequestInfo;

    .line 94
    .restart local v0    # "_arg0":Lcyanogenmod/weather/RequestInfo;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 96
    .restart local v1    # "_arg1":I
    sget-object v5, Lcyanogenmod/weather/WeatherLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 97
    .local v3, "_arg2":Ljava/util/List;, "Ljava/util/List<Lcyanogenmod/weather/WeatherLocation;>;"
    invoke-virtual {p0, v0, v1, v3}, Lcyanogenmod/weather/IRequestInfoListener$Stub;->onLookupCityRequestCompleted(Lcyanogenmod/weather/RequestInfo;ILjava/util/List;)V

    goto :goto_0

    .line 91
    .end local v0    # "_arg0":Lcyanogenmod/weather/RequestInfo;
    .end local v1    # "_arg1":I
    .end local v3    # "_arg2":Ljava/util/List;, "Ljava/util/List<Lcyanogenmod/weather/WeatherLocation;>;"
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcyanogenmod/weather/RequestInfo;
    goto :goto_3

    .line 54
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
