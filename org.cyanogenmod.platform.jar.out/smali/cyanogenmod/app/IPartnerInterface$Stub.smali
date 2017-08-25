.class public abstract Lcyanogenmod/app/IPartnerInterface$Stub;
.super Landroid/os/Binder;
.source "IPartnerInterface.java"

# interfaces
.implements Lcyanogenmod/app/IPartnerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/IPartnerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/app/IPartnerInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.app.IPartnerInterface"

.field static final TRANSACTION_getCurrentHotwordPackageName:I = 0x6

.field static final TRANSACTION_reboot:I = 0x5

.field static final TRANSACTION_setAirplaneModeEnabled_0:I = 0x1

.field static final TRANSACTION_setMobileDataEnabled:I = 0x2

.field static final TRANSACTION_setZenMode:I = 0x3

.field static final TRANSACTION_setZenModeWithDuration:I = 0x7

.field static final TRANSACTION_shutdown:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "cyanogenmod.app.IPartnerInterface"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/app/IPartnerInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/app/IPartnerInterface;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 57
    if-nez p0, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 64
    :goto_0
    return-object v0

    .line 60
    :cond_0
    const-string v1, "cyanogenmod.app.IPartnerInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 61
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcyanogenmod/app/IPartnerInterface;

    if-eqz v1, :cond_1

    .line 62
    check-cast v0, Lcyanogenmod/app/IPartnerInterface;

    goto :goto_0

    .line 64
    :cond_1
    new-instance v0, Lcyanogenmod/app/IPartnerInterface$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcyanogenmod/app/IPartnerInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 68
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 72
    sparse-switch p1, :sswitch_data_0

    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 76
    :sswitch_0
    const-string v5, "cyanogenmod.app.IPartnerInterface"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :sswitch_1
    const-string v6, "cyanogenmod.app.IPartnerInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    move v0, v4

    .line 84
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcyanogenmod/app/IPartnerInterface$Stub;->setAirplaneModeEnabled(Z)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":Z
    :cond_0
    move v0, v5

    .line 83
    goto :goto_1

    .line 90
    :sswitch_2
    const-string v6, "cyanogenmod.app.IPartnerInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    move v0, v4

    .line 93
    .restart local v0    # "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Lcyanogenmod/app/IPartnerInterface$Stub;->setMobileDataEnabled(Z)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":Z
    :cond_1
    move v0, v5

    .line 92
    goto :goto_2

    .line 99
    :sswitch_3
    const-string v6, "cyanogenmod.app.IPartnerInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 102
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcyanogenmod/app/IPartnerInterface$Stub;->setZenMode(I)Z

    move-result v1

    .line 103
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v1, :cond_2

    move v5, v4

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 109
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :sswitch_4
    const-string v5, "cyanogenmod.app.IPartnerInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcyanogenmod/app/IPartnerInterface$Stub;->shutdown()V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 116
    :sswitch_5
    const-string v5, "cyanogenmod.app.IPartnerInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcyanogenmod/app/IPartnerInterface$Stub;->reboot()V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 123
    :sswitch_6
    const-string v5, "cyanogenmod.app.IPartnerInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcyanogenmod/app/IPartnerInterface$Stub;->getCurrentHotwordPackageName()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string v6, "cyanogenmod.app.IPartnerInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 135
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 136
    .local v2, "_arg1":J
    invoke-virtual {p0, v0, v2, v3}, Lcyanogenmod/app/IPartnerInterface$Stub;->setZenModeWithDuration(IJ)Z

    move-result v1

    .line 137
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    if-eqz v1, :cond_3

    move v5, v4

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 72
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
