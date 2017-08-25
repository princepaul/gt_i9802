.class public final Lcyanogenmod/profiles/ConnectionSettings;
.super Ljava/lang/Object;
.source "ConnectionSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/profiles/ConnectionSettings$BooleanState;
    }
.end annotation


# static fields
.field private static final ACTION_MODIFY_NETWORK_MODE:Ljava/lang/String; = "com.android.internal.telephony.MODIFY_NETWORK_MODE"

.field private static final CM_MODE_2G:I = 0x0

.field private static final CM_MODE_2G3G:I = 0x3

.field private static final CM_MODE_3G:I = 0x1

.field private static final CM_MODE_4G:I = 0x2

.field private static final CM_MODE_ALL:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/profiles/ConnectionSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXTRA_NETWORK_MODE:Ljava/lang/String; = "networkMode"

.field private static final EXTRA_SUB_ID:Ljava/lang/String; = "subId"

.field public static final PROFILE_CONNECTION_2G3G4G:I = 0x9

.field public static final PROFILE_CONNECTION_BLUETOOTH:I = 0x7

.field public static final PROFILE_CONNECTION_GPS:I = 0x4

.field public static final PROFILE_CONNECTION_MOBILEDATA:I = 0x0

.field public static final PROFILE_CONNECTION_NFC:I = 0x8

.field public static final PROFILE_CONNECTION_SYNC:I = 0x5

.field public static final PROFILE_CONNECTION_WIFI:I = 0x1

.field public static final PROFILE_CONNECTION_WIFIAP:I = 0x2

.field public static final PROFILE_CONNECTION_WIMAX:I = 0x3


# instance fields
.field private mConnectionId:I

.field private mDirty:Z

.field private mOverride:Z

.field private mSubId:I

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lcyanogenmod/profiles/ConnectionSettings$1;

    invoke-direct {v0}, Lcyanogenmod/profiles/ConnectionSettings$1;-><init>()V

    sput-object v0, Lcyanogenmod/profiles/ConnectionSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "connectionId"    # I

    .prologue
    const/4 v0, 0x0

    .line 171
    invoke-direct {p0, p1, v0, v0}, Lcyanogenmod/profiles/ConnectionSettings;-><init>(IIZ)V

    .line 172
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1
    .param p1, "connectionId"    # I
    .param p2, "value"    # I
    .param p3, "override"    # Z

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mSubId:I

    .line 182
    iput p1, p0, Lcyanogenmod/profiles/ConnectionSettings;->mConnectionId:I

    .line 183
    iput p2, p0, Lcyanogenmod/profiles/ConnectionSettings;->mValue:I

    .line 184
    iput-boolean p3, p0, Lcyanogenmod/profiles/ConnectionSettings;->mOverride:Z

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mDirty:Z

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mSubId:I

    .line 163
    invoke-virtual {p0, p1}, Lcyanogenmod/profiles/ConnectionSettings;->readFromParcel(Landroid/os/Parcel;)V

    .line 164
    return-void
.end method

.method public static fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Lcyanogenmod/profiles/ConnectionSettings;
    .locals 5
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 385
    .local v1, "event":I
    new-instance v0, Lcyanogenmod/profiles/ConnectionSettings;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcyanogenmod/profiles/ConnectionSettings;-><init>(I)V

    .line 386
    .local v0, "connectionDescriptor":Lcyanogenmod/profiles/ConnectionSettings;
    :goto_0
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "connectionDescriptor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 387
    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    .line 388
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 389
    .local v2, "name":Ljava/lang/String;
    const-string v3, "connectionId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 390
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcyanogenmod/profiles/ConnectionSettings;->mConnectionId:I

    .line 401
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 391
    .restart local v2    # "name":Ljava/lang/String;
    :cond_2
    const-string v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 392
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcyanogenmod/profiles/ConnectionSettings;->mValue:I

    goto :goto_1

    .line 393
    :cond_3
    const-string v3, "override"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 394
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcyanogenmod/profiles/ConnectionSettings;->mOverride:Z

    goto :goto_1

    .line 395
    :cond_4
    const-string v3, "subId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 396
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcyanogenmod/profiles/ConnectionSettings;->mSubId:I

    goto :goto_1

    .line 398
    .end local v2    # "name":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 399
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Premature end of file while parsing connection settings"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 403
    :cond_6
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x0

    return v0
.end method

.method public getConnectionId()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mConnectionId:I

    return v0
.end method

.method public getSubId()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mSubId:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mValue:I

    return v0
.end method

.method public getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 2
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 408
    const-string v0, "<connectionDescriptor>\n<connectionId>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    iget v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mConnectionId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 410
    const-string v0, "</connectionId>\n<value>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    iget v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mValue:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 412
    const-string v0, "</value>\n<override>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    iget-boolean v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mOverride:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 414
    const-string v0, "</override>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    sget v0, Lcyanogenmod/os/Build$CM_VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 416
    iget v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mConnectionId:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mSubId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 418
    const-string v0, "<subId>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcyanogenmod/profiles/ConnectionSettings;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</subId>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    :cond_0
    const-string v0, "</connectionDescriptor>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    return-void
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mDirty:Z

    return v0
.end method

.method public isOverride()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mOverride:Z

    return v0
.end method

.method public processOverride(Landroid/content/Context;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 250
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    .line 251
    .local v4, "bta":Landroid/bluetooth/BluetoothAdapter;
    const-string v18, "location"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/location/LocationManager;

    .line 252
    .local v10, "lm":Landroid/location/LocationManager;
    const-string v18, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/WifiManager;

    .line 253
    .local v17, "wm":Landroid/net/wifi/WifiManager;
    const-string v18, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/TelephonyManager;

    .line 255
    .local v14, "tm":Landroid/telephony/TelephonyManager;
    const/4 v11, 0x0

    .line 257
    .local v11, "nfcAdapter":Landroid/nfc/NfcAdapter;
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 262
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/profiles/ConnectionSettings;->getValue()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    const/4 v7, 0x1

    .line 265
    .local v7, "forcedState":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/profiles/ConnectionSettings;->getConnectionId()I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 379
    :cond_0
    :goto_2
    :pswitch_0
    return-void

    .line 262
    .end local v7    # "forcedState":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 267
    .restart local v7    # "forcedState":Z
    :pswitch_1
    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v6

    .line 268
    .local v6, "currentState":Z
    if-eq v7, v6, :cond_0

    .line 269
    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v12

    .line 270
    .local v12, "phoneCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v12, :cond_0

    .line 271
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mobile_data"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    if-eqz v7, :cond_2

    const/16 v18, 0x1

    :goto_4
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 273
    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v13

    .line 274
    .local v13, "subId":[I
    const/16 v18, 0x0

    aget v18, v13, v18

    move/from16 v0, v18

    invoke-virtual {v14, v0, v7}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 270
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 271
    .end local v13    # "subId":[I
    :cond_2
    const/16 v18, 0x0

    goto :goto_4

    .line 279
    .end local v6    # "currentState":Z
    .end local v8    # "i":I
    .end local v12    # "phoneCount":I
    :pswitch_2
    sget v18, Lcyanogenmod/os/Build$CM_VERSION;->SDK_INT:I

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    .line 280
    new-instance v9, Landroid/content/Intent;

    const-string v18, "com.android.internal.telephony.MODIFY_NETWORK_MODE"

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .local v9, "intent":Landroid/content/Intent;
    const-string v18, "networkMode"

    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/profiles/ConnectionSettings;->getValue()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    const-string v18, "subId"

    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/profiles/ConnectionSettings;->getSubId()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    const-string v18, "com.android.phone.CHANGE_NETWORK_MODE"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 285
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v9, Landroid/content/Intent;

    const-string v18, "com.android.internal.telephony.MODIFY_NETWORK_MODE"

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 286
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/profiles/ConnectionSettings;->getValue()I

    move-result v18

    packed-switch v18, :pswitch_data_1

    goto/16 :goto_2

    .line 288
    :pswitch_3
    const-string v18, "networkMode"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 291
    :pswitch_4
    const-string v18, "networkMode"

    const/16 v19, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 294
    :pswitch_5
    const-string v18, "networkMode"

    const/16 v19, 0xb

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 297
    :pswitch_6
    const-string v18, "networkMode"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 300
    :pswitch_7
    const-string v18, "networkMode"

    const/16 v19, 0x9

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 310
    .end local v9    # "intent":Landroid/content/Intent;
    :pswitch_8
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v5

    .line 311
    .local v5, "btstate":I
    if-eqz v7, :cond_5

    const/16 v18, 0xa

    move/from16 v0, v18

    if-eq v5, v0, :cond_4

    const/16 v18, 0xd

    move/from16 v0, v18

    if-ne v5, v0, :cond_5

    .line 313
    :cond_4
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto/16 :goto_2

    .line 314
    :cond_5
    if-nez v7, :cond_0

    const/16 v18, 0xc

    move/from16 v0, v18

    if-eq v5, v0, :cond_6

    const/16 v18, 0xb

    move/from16 v0, v18

    if-ne v5, v0, :cond_0

    .line 316
    :cond_6
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto/16 :goto_2

    .line 320
    .end local v5    # "btstate":I
    :pswitch_9
    const-string v18, "gps"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v6

    .line 321
    .restart local v6    # "currentState":Z
    if-eq v6, v7, :cond_0

    .line 322
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "gps"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 327
    .end local v6    # "currentState":Z
    :pswitch_a
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v6

    .line 328
    .restart local v6    # "currentState":Z
    if-eq v7, v6, :cond_0

    .line 329
    invoke-static {v7}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    goto/16 :goto_2

    .line 333
    .end local v6    # "currentState":Z
    :pswitch_b
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v15

    .line 334
    .local v15, "wifiApState":I
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    .line 335
    .restart local v6    # "currentState":Z
    if-eq v6, v7, :cond_0

    .line 337
    if-eqz v7, :cond_7

    const/16 v18, 0xc

    move/from16 v0, v18

    if-eq v15, v0, :cond_8

    :cond_7
    const/16 v18, 0xd

    move/from16 v0, v18

    if-ne v15, v0, :cond_9

    .line 339
    :cond_8
    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 341
    :cond_9
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto/16 :goto_2

    .line 345
    .end local v6    # "currentState":Z
    .end local v15    # "wifiApState":I
    :pswitch_c
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v16

    .line 346
    .local v16, "wifiState":I
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v6

    .line 347
    .restart local v6    # "currentState":Z
    if-eq v6, v7, :cond_0

    .line 349
    if-eqz v7, :cond_a

    const/16 v18, 0x2

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_b

    :cond_a
    const/16 v18, 0x3

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 351
    :cond_b
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 353
    :cond_c
    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_2

    .line 357
    .end local v6    # "currentState":Z
    .end local v16    # "wifiState":I
    :pswitch_d
    invoke-static/range {p1 .. p1}, Landroid/net/wimax/WimaxHelper;->isWimaxSupported(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 358
    invoke-static/range {p1 .. p1}, Landroid/net/wimax/WimaxHelper;->isWimaxEnabled(Landroid/content/Context;)Z

    move-result v6

    .line 359
    .restart local v6    # "currentState":Z
    if-eq v6, v7, :cond_0

    .line 360
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/net/wimax/WimaxHelper;->setWimaxEnabled(Landroid/content/Context;Z)Z

    goto/16 :goto_2

    .line 365
    .end local v6    # "currentState":Z
    :pswitch_e
    if-eqz v11, :cond_0

    .line 366
    invoke-virtual {v11}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v3

    .line 367
    .local v3, "adapterState":I
    const/16 v18, 0x3

    move/from16 v0, v18

    if-eq v3, v0, :cond_d

    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v3, v0, :cond_e

    :cond_d
    const/4 v6, 0x1

    .line 369
    .restart local v6    # "currentState":Z
    :goto_6
    if-eq v6, v7, :cond_0

    .line 370
    if-eqz v7, :cond_f

    .line 371
    invoke-virtual {v11}, Landroid/nfc/NfcAdapter;->enable()Z

    goto/16 :goto_2

    .line 367
    .end local v6    # "currentState":Z
    :cond_e
    const/4 v6, 0x0

    goto :goto_6

    .line 372
    .restart local v6    # "currentState":Z
    :cond_f
    if-nez v7, :cond_0

    const/16 v18, 0x4

    move/from16 v0, v18

    if-eq v3, v0, :cond_0

    .line 373
    invoke-virtual {v11}, Landroid/nfc/NfcAdapter;->disable()Z

    goto/16 :goto_2

    .line 258
    .end local v3    # "adapterState":I
    .end local v6    # "currentState":Z
    .end local v7    # "forcedState":Z
    :catch_0
    move-exception v18

    goto/16 :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_8
        :pswitch_e
        :pswitch_2
    .end packed-switch

    .line 286
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 453
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 454
    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    .line 459
    .local v1, "parcelableVersion":I
    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 460
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcyanogenmod/profiles/ConnectionSettings;->mConnectionId:I

    .line 461
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcyanogenmod/profiles/ConnectionSettings;->mOverride:Z

    .line 462
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcyanogenmod/profiles/ConnectionSettings;->mValue:I

    .line 463
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    iput-boolean v3, p0, Lcyanogenmod/profiles/ConnectionSettings;->mDirty:Z

    .line 466
    :cond_0
    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    .line 467
    iget v2, p0, Lcyanogenmod/profiles/ConnectionSettings;->mConnectionId:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcyanogenmod/profiles/ConnectionSettings;->mSubId:I

    .line 473
    :cond_1
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 474
    return-void

    :cond_2
    move v2, v4

    .line 461
    goto :goto_0

    :cond_3
    move v3, v4

    .line 463
    goto :goto_1
.end method

.method public setOverride(Z)V
    .locals 1
    .param p1, "override"    # Z

    .prologue
    .line 218
    iput-boolean p1, p0, Lcyanogenmod/profiles/ConnectionSettings;->mOverride:Z

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mDirty:Z

    .line 220
    return-void
.end method

.method public setSubId(I)V
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 223
    iput p1, p0, Lcyanogenmod/profiles/ConnectionSettings;->mSubId:I

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mDirty:Z

    .line 225
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 209
    iput p1, p0, Lcyanogenmod/profiles/ConnectionSettings;->mValue:I

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mDirty:Z

    .line 211
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 433
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 436
    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    iget v1, p0, Lcyanogenmod/profiles/ConnectionSettings;->mConnectionId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    iget-boolean v1, p0, Lcyanogenmod/profiles/ConnectionSettings;->mOverride:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    iget v1, p0, Lcyanogenmod/profiles/ConnectionSettings;->mValue:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    iget-boolean v1, p0, Lcyanogenmod/profiles/ConnectionSettings;->mDirty:Z

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    iget v1, p0, Lcyanogenmod/profiles/ConnectionSettings;->mConnectionId:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 443
    iget v1, p0, Lcyanogenmod/profiles/ConnectionSettings;->mSubId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    :cond_0
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 448
    return-void

    :cond_1
    move v1, v3

    .line 437
    goto :goto_0

    :cond_2
    move v2, v3

    .line 439
    goto :goto_1
.end method
