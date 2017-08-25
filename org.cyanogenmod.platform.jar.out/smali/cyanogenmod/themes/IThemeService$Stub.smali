.class public abstract Lcyanogenmod/themes/IThemeService$Stub;
.super Landroid/os/Binder;
.source "IThemeService.java"

# interfaces
.implements Lcyanogenmod/themes/IThemeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/themes/IThemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/themes/IThemeService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.themes.IThemeService"

.field static final TRANSACTION_applyDefaultTheme:I = 0x4

.field static final TRANSACTION_getLastThemeChangeRequestType:I = 0xd

.field static final TRANSACTION_getLastThemeChangeTime:I = 0xc

.field static final TRANSACTION_getProgress:I = 0x6

.field static final TRANSACTION_isThemeApplying:I = 0x5

.field static final TRANSACTION_isThemeBeingProcessed:I = 0x8

.field static final TRANSACTION_processThemeResources:I = 0x7

.field static final TRANSACTION_rebuildResourceCache:I = 0xb

.field static final TRANSACTION_registerThemeProcessingListener:I = 0x9

.field static final TRANSACTION_removeUpdates:I = 0x2

.field static final TRANSACTION_requestThemeChange:I = 0x3

.field static final TRANSACTION_requestThemeChangeUpdates:I = 0x1

.field static final TRANSACTION_unregisterThemeProcessingListener:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 70
    const-string v0, "cyanogenmod.themes.IThemeService"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/themes/IThemeService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/themes/IThemeService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 78
    if-nez p0, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    .line 81
    :cond_0
    const-string v1, "cyanogenmod.themes.IThemeService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 82
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcyanogenmod/themes/IThemeService;

    if-eqz v1, :cond_1

    .line 83
    check-cast v0, Lcyanogenmod/themes/IThemeService;

    goto :goto_0

    .line 85
    :cond_1
    new-instance v0, Lcyanogenmod/themes/IThemeService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcyanogenmod/themes/IThemeService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 89
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
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 93
    sparse-switch p1, :sswitch_data_0

    .line 212
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 97
    :sswitch_0
    const-string v5, "cyanogenmod.themes.IThemeService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :sswitch_1
    const-string v5, "cyanogenmod.themes.IThemeService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcyanogenmod/themes/IThemeChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/themes/IThemeChangeListener;

    move-result-object v0

    .line 105
    .local v0, "_arg0":Lcyanogenmod/themes/IThemeChangeListener;
    invoke-virtual {p0, v0}, Lcyanogenmod/themes/IThemeService$Stub;->requestThemeChangeUpdates(Lcyanogenmod/themes/IThemeChangeListener;)V

    goto :goto_0

    .line 110
    .end local v0    # "_arg0":Lcyanogenmod/themes/IThemeChangeListener;
    :sswitch_2
    const-string v5, "cyanogenmod.themes.IThemeService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcyanogenmod/themes/IThemeChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/themes/IThemeChangeListener;

    move-result-object v0

    .line 113
    .restart local v0    # "_arg0":Lcyanogenmod/themes/IThemeChangeListener;
    invoke-virtual {p0, v0}, Lcyanogenmod/themes/IThemeService$Stub;->removeUpdates(Lcyanogenmod/themes/IThemeChangeListener;)V

    goto :goto_0

    .line 118
    .end local v0    # "_arg0":Lcyanogenmod/themes/IThemeChangeListener;
    :sswitch_3
    const-string v5, "cyanogenmod.themes.IThemeService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 121
    sget-object v5, Lcyanogenmod/themes/ThemeChangeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/themes/ThemeChangeRequest;

    .line 127
    .local v0, "_arg0":Lcyanogenmod/themes/ThemeChangeRequest;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v1, v4

    .line 128
    .local v1, "_arg1":Z
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcyanogenmod/themes/IThemeService$Stub;->requestThemeChange(Lcyanogenmod/themes/ThemeChangeRequest;Z)V

    goto :goto_0

    .line 124
    .end local v0    # "_arg0":Lcyanogenmod/themes/ThemeChangeRequest;
    .end local v1    # "_arg1":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcyanogenmod/themes/ThemeChangeRequest;
    goto :goto_1

    .line 133
    .end local v0    # "_arg0":Lcyanogenmod/themes/ThemeChangeRequest;
    :sswitch_4
    const-string v5, "cyanogenmod.themes.IThemeService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcyanogenmod/themes/IThemeService$Stub;->applyDefaultTheme()V

    goto :goto_0

    .line 139
    :sswitch_5
    const-string v5, "cyanogenmod.themes.IThemeService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcyanogenmod/themes/IThemeService$Stub;->isThemeApplying()Z

    move-result v2

    .line 141
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    if-eqz v2, :cond_2

    move v1, v4

    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 147
    .end local v2    # "_result":Z
    :sswitch_6
    const-string v5, "cyanogenmod.themes.IThemeService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcyanogenmod/themes/IThemeService$Stub;->getProgress()I

    move-result v2

    .line 149
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 155
    .end local v2    # "_result":I
    :sswitch_7
    const-string v5, "cyanogenmod.themes.IThemeService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcyanogenmod/themes/IThemeService$Stub;->processThemeResources(Ljava/lang/String;)Z

    move-result v2

    .line 159
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    if-eqz v2, :cond_3

    move v1, v4

    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 165
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :sswitch_8
    const-string v5, "cyanogenmod.themes.IThemeService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 168
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcyanogenmod/themes/IThemeService$Stub;->isThemeBeingProcessed(Ljava/lang/String;)Z

    move-result v2

    .line 169
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v2, :cond_4

    move v1, v4

    :cond_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 175
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :sswitch_9
    const-string v5, "cyanogenmod.themes.IThemeService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcyanogenmod/themes/IThemeProcessingListener$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/themes/IThemeProcessingListener;

    move-result-object v0

    .line 178
    .local v0, "_arg0":Lcyanogenmod/themes/IThemeProcessingListener;
    invoke-virtual {p0, v0}, Lcyanogenmod/themes/IThemeService$Stub;->registerThemeProcessingListener(Lcyanogenmod/themes/IThemeProcessingListener;)V

    goto/16 :goto_0

    .line 183
    .end local v0    # "_arg0":Lcyanogenmod/themes/IThemeProcessingListener;
    :sswitch_a
    const-string v5, "cyanogenmod.themes.IThemeService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcyanogenmod/themes/IThemeProcessingListener$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/themes/IThemeProcessingListener;

    move-result-object v0

    .line 186
    .restart local v0    # "_arg0":Lcyanogenmod/themes/IThemeProcessingListener;
    invoke-virtual {p0, v0}, Lcyanogenmod/themes/IThemeService$Stub;->unregisterThemeProcessingListener(Lcyanogenmod/themes/IThemeProcessingListener;)V

    goto/16 :goto_0

    .line 191
    .end local v0    # "_arg0":Lcyanogenmod/themes/IThemeProcessingListener;
    :sswitch_b
    const-string v5, "cyanogenmod.themes.IThemeService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcyanogenmod/themes/IThemeService$Stub;->rebuildResourceCache()V

    goto/16 :goto_0

    .line 197
    :sswitch_c
    const-string v5, "cyanogenmod.themes.IThemeService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcyanogenmod/themes/IThemeService$Stub;->getLastThemeChangeTime()J

    move-result-wide v2

    .line 199
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 205
    .end local v2    # "_result":J
    :sswitch_d
    const-string v5, "cyanogenmod.themes.IThemeService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcyanogenmod/themes/IThemeService$Stub;->getLastThemeChangeRequestType()I

    move-result v2

    .line 207
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 93
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
