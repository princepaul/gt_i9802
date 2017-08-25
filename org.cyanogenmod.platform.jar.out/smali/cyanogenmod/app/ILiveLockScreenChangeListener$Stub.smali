.class public abstract Lcyanogenmod/app/ILiveLockScreenChangeListener$Stub;
.super Landroid/os/Binder;
.source "ILiveLockScreenChangeListener.java"

# interfaces
.implements Lcyanogenmod/app/ILiveLockScreenChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/ILiveLockScreenChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/app/ILiveLockScreenChangeListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.app.ILiveLockScreenChangeListener"

.field static final TRANSACTION_onLiveLockScreenChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "cyanogenmod.app.ILiveLockScreenChangeListener"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/app/ILiveLockScreenChangeListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/app/ILiveLockScreenChangeListener;
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
    const-string v1, "cyanogenmod.app.ILiveLockScreenChangeListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 43
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcyanogenmod/app/ILiveLockScreenChangeListener;

    if-eqz v1, :cond_1

    .line 44
    check-cast v0, Lcyanogenmod/app/ILiveLockScreenChangeListener;

    goto :goto_0

    .line 46
    :cond_1
    new-instance v0, Lcyanogenmod/app/ILiveLockScreenChangeListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcyanogenmod/app/ILiveLockScreenChangeListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 54
    sparse-switch p1, :sswitch_data_0

    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 58
    :sswitch_0
    const-string v2, "cyanogenmod.app.ILiveLockScreenChangeListener"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :sswitch_1
    const-string v2, "cyanogenmod.app.ILiveLockScreenChangeListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    sget-object v2, Lcyanogenmod/app/LiveLockScreenInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/LiveLockScreenInfo;

    .line 71
    .local v0, "_arg0":Lcyanogenmod/app/LiveLockScreenInfo;
    :goto_1
    invoke-virtual {p0, v0}, Lcyanogenmod/app/ILiveLockScreenChangeListener$Stub;->onLiveLockScreenChanged(Lcyanogenmod/app/LiveLockScreenInfo;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 69
    .end local v0    # "_arg0":Lcyanogenmod/app/LiveLockScreenInfo;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcyanogenmod/app/LiveLockScreenInfo;
    goto :goto_1

    .line 54
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
