.class public abstract Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub;
.super Landroid/os/Binder;
.source "IKeyguardExternalViewCallbacks.java"

# interfaces
.implements Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

.field static final TRANSACTION_collapseNotificationPanel:I = 0x3

.field static final TRANSACTION_onAttachedToWindow:I = 0x5

.field static final TRANSACTION_onDetachedFromWindow:I = 0x6

.field static final TRANSACTION_requestDismiss:I = 0x1

.field static final TRANSACTION_requestDismissAndStartActivity:I = 0x2

.field static final TRANSACTION_setInteractivity:I = 0x4

.field static final TRANSACTION_slideLockscreenIn:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 48
    const-string v0, "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 56
    if-nez p0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    .line 59
    :cond_0
    const-string v1, "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;

    if-eqz v1, :cond_1

    .line 61
    check-cast v0, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;

    goto :goto_0

    .line 63
    :cond_1
    new-instance v0, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 67
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 71
    sparse-switch p1, :sswitch_data_0

    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 75
    :sswitch_0
    const-string v2, "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :sswitch_1
    const-string v4, "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub;->requestDismiss()Z

    move-result v1

    .line 82
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 88
    .end local v1    # "_result":Z
    :sswitch_2
    const-string v4, "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 91
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 96
    .local v0, "_arg0":Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0, v0}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub;->requestDismissAndStartActivity(Landroid/content/Intent;)Z

    move-result v1

    .line 97
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 94
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_result":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/Intent;
    goto :goto_1

    .line 103
    .end local v0    # "_arg0":Landroid/content/Intent;
    :sswitch_3
    const-string v2, "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub;->collapseNotificationPanel()V

    goto :goto_0

    .line 109
    :sswitch_4
    const-string v4, "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    move v0, v3

    .line 112
    .local v0, "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub;->setInteractivity(Z)V

    goto :goto_0

    .end local v0    # "_arg0":Z
    :cond_3
    move v0, v2

    .line 111
    goto :goto_2

    .line 117
    :sswitch_5
    const-string v2, "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub;->onAttachedToWindow()V

    goto :goto_0

    .line 123
    :sswitch_6
    const-string v2, "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub;->onDetachedFromWindow()V

    goto :goto_0

    .line 129
    :sswitch_7
    const-string v2, "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub;->slideLockscreenIn()V

    goto :goto_0

    .line 71
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
