.class public abstract Lcyanogenmod/app/ICMStatusBarManager$Stub;
.super Landroid/os/Binder;
.source "ICMStatusBarManager.java"

# interfaces
.implements Lcyanogenmod/app/ICMStatusBarManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/ICMStatusBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/app/ICMStatusBarManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.app.ICMStatusBarManager"

.field static final TRANSACTION_createCustomTileWithTag:I = 0x1

.field static final TRANSACTION_registerListener:I = 0x3

.field static final TRANSACTION_removeCustomTileFromListener:I = 0x5

.field static final TRANSACTION_removeCustomTileWithTag:I = 0x2

.field static final TRANSACTION_unregisterListener:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    const-string v0, "cyanogenmod.app.ICMStatusBarManager"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/app/ICMStatusBarManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/app/ICMStatusBarManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 55
    if-nez p0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 62
    :goto_0
    return-object v0

    .line 58
    :cond_0
    const-string v1, "cyanogenmod.app.ICMStatusBarManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 59
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcyanogenmod/app/ICMStatusBarManager;

    if-eqz v1, :cond_1

    .line 60
    check-cast v0, Lcyanogenmod/app/ICMStatusBarManager;

    goto :goto_0

    .line 62
    :cond_1
    new-instance v0, Lcyanogenmod/app/ICMStatusBarManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcyanogenmod/app/ICMStatusBarManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 66
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v8, 0x1

    .line 70
    sparse-switch p1, :sswitch_data_0

    .line 164
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 74
    :sswitch_0
    const-string v0, "cyanogenmod.app.ICMStatusBarManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v8

    .line 75
    goto :goto_0

    .line 79
    :sswitch_1
    const-string v0, "cyanogenmod.app.ICMStatusBarManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 89
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lcyanogenmod/app/CustomTile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcyanogenmod/app/CustomTile;

    .line 96
    .local v5, "_arg4":Lcyanogenmod/app/CustomTile;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    .line 98
    .local v6, "_arg5":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg6":I
    move-object v0, p0

    .line 99
    invoke-virtual/range {v0 .. v7}, Lcyanogenmod/app/ICMStatusBarManager$Stub;->createCustomTileWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcyanogenmod/app/CustomTile;[II)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    move v0, v8

    .line 102
    goto :goto_0

    .line 93
    .end local v5    # "_arg4":Lcyanogenmod/app/CustomTile;
    .end local v6    # "_arg5":[I
    .end local v7    # "_arg6":I
    :cond_0
    const/4 v5, 0x0

    .restart local v5    # "_arg4":Lcyanogenmod/app/CustomTile;
    goto :goto_1

    .line 106
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Lcyanogenmod/app/CustomTile;
    :sswitch_2
    const-string v0, "cyanogenmod.app.ICMStatusBarManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 110
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 112
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 114
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 115
    .restart local v4    # "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcyanogenmod/app/ICMStatusBarManager$Stub;->removeCustomTileWithTag(Ljava/lang/String;Ljava/lang/String;II)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 117
    goto :goto_0

    .line 121
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :sswitch_3
    const-string v0, "cyanogenmod.app.ICMStatusBarManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcyanogenmod/app/ICustomTileListener$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/app/ICustomTileListener;

    move-result-object v1

    .line 125
    .local v1, "_arg0":Lcyanogenmod/app/ICustomTileListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 132
    .local v2, "_arg1":Landroid/content/ComponentName;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 133
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcyanogenmod/app/ICMStatusBarManager$Stub;->registerListener(Lcyanogenmod/app/ICustomTileListener;Landroid/content/ComponentName;I)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 135
    goto/16 :goto_0

    .line 129
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .end local v3    # "_arg2":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/content/ComponentName;
    goto :goto_2

    .line 139
    .end local v1    # "_arg0":Lcyanogenmod/app/ICustomTileListener;
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    :sswitch_4
    const-string v0, "cyanogenmod.app.ICMStatusBarManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcyanogenmod/app/ICustomTileListener$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/app/ICustomTileListener;

    move-result-object v1

    .line 143
    .restart local v1    # "_arg0":Lcyanogenmod/app/ICustomTileListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 144
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcyanogenmod/app/ICMStatusBarManager$Stub;->unregisterListener(Lcyanogenmod/app/ICustomTileListener;I)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 146
    goto/16 :goto_0

    .line 150
    .end local v1    # "_arg0":Lcyanogenmod/app/ICustomTileListener;
    .end local v2    # "_arg1":I
    :sswitch_5
    const-string v0, "cyanogenmod.app.ICMStatusBarManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcyanogenmod/app/ICustomTileListener$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/app/ICustomTileListener;

    move-result-object v1

    .line 154
    .restart local v1    # "_arg0":Lcyanogenmod/app/ICustomTileListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 159
    .restart local v4    # "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcyanogenmod/app/ICMStatusBarManager$Stub;->removeCustomTileFromListener(Lcyanogenmod/app/ICustomTileListener;Ljava/lang/String;Ljava/lang/String;I)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 161
    goto/16 :goto_0

    .line 70
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
