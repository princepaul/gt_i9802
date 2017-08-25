.class public Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;
.super Landroid/content/BroadcastReceiver;
.source "ProfileTriggerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper$SettingsObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ProfileTriggerHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilterRegistered:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLastConnectedSSID:Ljava/lang/String;

.field private mManagerService:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "profileManagerService"    # Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 56
    iput-boolean v3, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mFilterRegistered:Z

    .line 72
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mContext:Landroid/content/Context;

    .line 73
    iput-object p3, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mManagerService:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    .line 74
    new-instance v0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper$SettingsObserver;

    invoke-direct {v0, p0, p2}, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper$SettingsObserver;-><init>(Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 76
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 77
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->getActiveSSID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mLastConnectedSSID:Ljava/lang/String;

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mIntentFilter:Landroid/content/IntentFilter;

    .line 80
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->updateEnabled()V

    .line 86
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "system_profiles_enabled"

    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 89
    return-void
.end method

.method private checkTriggers(ILjava/lang/String;I)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "newState"    # I

    .prologue
    .line 151
    iget-object v10, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mManagerService:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-virtual {v10}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->getActiveProfileInternal()Lcyanogenmod/app/Profile;

    move-result-object v0

    .line 152
    .local v0, "activeProfile":Lcyanogenmod/app/Profile;
    invoke-virtual {v0}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 154
    .local v1, "currentProfileUuid":Ljava/util/UUID;
    const/4 v4, 0x0

    .line 155
    .local v4, "newProfileSelected":Z
    iget-object v10, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mManagerService:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-virtual {v10}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->getProfileList()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcyanogenmod/app/Profile;

    .line 156
    .local v5, "p":Lcyanogenmod/app/Profile;
    invoke-virtual {v5, p1, p2}, Lcyanogenmod/app/Profile;->getTriggerState(ILjava/lang/String;)I

    move-result v6

    .line 157
    .local v6, "profileTriggerState":I
    if-ne p3, v6, :cond_0

    .line 161
    invoke-virtual {v5}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 162
    iget-object v10, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mManagerService:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    const/4 v11, 0x1

    invoke-virtual {v10, v5, v11}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->setActiveProfileInternal(Lcyanogenmod/app/Profile;Z)V

    .line 163
    const/4 v4, 0x1

    goto :goto_0

    .line 167
    .end local v5    # "p":Lcyanogenmod/app/Profile;
    .end local v6    # "profileTriggerState":I
    :cond_1
    if-nez v4, :cond_5

    .line 169
    invoke-virtual {v0, p1}, Lcyanogenmod/app/Profile;->getTriggersFromType(I)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcyanogenmod/app/Profile$ProfileTrigger;

    .line 170
    .local v7, "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    invoke-virtual {v7}, Lcyanogenmod/app/Profile$ProfileTrigger;->getId()Ljava/lang/String;

    move-result-object v8

    .line 171
    .local v8, "triggerID":Ljava/lang/String;
    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 172
    new-instance v3, Landroid/content/Intent;

    const-string v10, "cyanogenmod.platform.intent.action.INTENT_ACTION_PROFILE_TRIGGER_STATE_CHANGED"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v3, "intent":Landroid/content/Intent;
    const-string v10, "trigger_id"

    invoke-virtual {v3, v10, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v10, "trigger_type"

    invoke-virtual {v3, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    const-string v10, "trigger_state"

    invoke-virtual {v3, v10, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    iget-object v10, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v10, v3, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 179
    invoke-virtual {v7}, Lcyanogenmod/app/Profile$ProfileTrigger;->getState()I

    move-result v9

    .line 180
    .local v9, "triggerState":I
    if-nez p3, :cond_3

    if-eqz v9, :cond_4

    :cond_3
    const/4 v10, 0x1

    if-ne p3, v10, :cond_5

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 184
    :cond_4
    iget-object v10, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Lcyanogenmod/app/Profile;->doSelect(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;)V

    .line 191
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v7    # "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    .end local v8    # "triggerID":Ljava/lang/String;
    .end local v9    # "triggerState":I
    :cond_5
    return-void
.end method

.method private getActiveSSID()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 194
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 195
    .local v1, "wifiinfo":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-object v2

    .line 198
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    move-result-object v0

    .line 199
    .local v0, "ssid":Landroid/net/wifi/WifiSsid;
    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 111
    .local v2, "extras":Landroid/os/Bundle;
    const-string v7, "wifiInfo"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiInfo;

    .line 112
    .local v5, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v5, :cond_1

    .line 113
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "ssid":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 117
    const-string v7, "\""

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "\""

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 118
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 120
    :cond_0
    const-string v7, "<unknown ssid>"

    invoke-static {v3, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 121
    iget-object v7, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mLastConnectedSSID:Ljava/lang/String;

    invoke-direct {p0, v4, v7, v6}, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->checkTriggers(ILjava/lang/String;I)V

    .line 123
    const-string v6, "<unknown ssid>"

    iput-object v6, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mLastConnectedSSID:Ljava/lang/String;

    .line 148
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "ssid":Ljava/lang/String;
    .end local v5    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_1
    :goto_0
    return-void

    .line 124
    .restart local v2    # "extras":Landroid/os/Bundle;
    .restart local v3    # "ssid":Ljava/lang/String;
    .restart local v5    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_2
    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mLastConnectedSSID:Ljava/lang/String;

    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 125
    iput-object v3, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mLastConnectedSSID:Ljava/lang/String;

    .line 126
    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mLastConnectedSSID:Ljava/lang/String;

    invoke-direct {p0, v4, v6, v4}, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->checkTriggers(ILjava/lang/String;I)V

    goto :goto_0

    .line 131
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "ssid":Ljava/lang/String;
    .end local v5    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_3
    const-string v7, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 133
    :cond_4
    const-string v7, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 135
    .local v4, "triggerState":I
    :goto_1
    const-string v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 137
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7, v4}, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->checkTriggers(ILjava/lang/String;I)V

    goto :goto_0

    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "triggerState":I
    :cond_5
    move v4, v6

    .line 133
    goto :goto_1
.end method

.method public updateEnabled()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 92
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "system_profiles_enabled"

    invoke-static {v3, v4, v1}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 94
    .local v0, "enabled":Z
    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mFilterRegistered:Z

    if-nez v3, :cond_2

    .line 95
    const-string v2, "ProfileTriggerHelper"

    const-string v3, "Enabling"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, p0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    iput-boolean v1, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mFilterRegistered:Z

    .line 103
    :cond_0
    :goto_1
    return-void

    .end local v0    # "enabled":Z
    :cond_1
    move v0, v2

    .line 92
    goto :goto_0

    .line 98
    .restart local v0    # "enabled":Z
    :cond_2
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mFilterRegistered:Z

    if-eqz v1, :cond_0

    .line 99
    const-string v1, "ProfileTriggerHelper"

    const-string v3, "Disabling"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 101
    iput-boolean v2, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mFilterRegistered:Z

    goto :goto_1
.end method
