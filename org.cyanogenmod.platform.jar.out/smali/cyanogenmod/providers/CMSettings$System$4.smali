.class final Lcyanogenmod/providers/CMSettings$System$4;
.super Ljava/lang/Object;
.source "CMSettings.java"

# interfaces
.implements Lcyanogenmod/providers/CMSettings$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/providers/CMSettings$System;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1833
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;)Z
    .locals 9
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 1836
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1846
    :cond_0
    :goto_0
    return v6

    .line 1839
    :cond_1
    const-string v7, ","

    invoke-static {p1, v7}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1840
    .local v4, "sp":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1841
    .local v3, "s":Ljava/lang/String;
    const-string v7, ":"

    invoke-static {v3, v7}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1842
    .local v5, "sp2":[Ljava/lang/String;
    array-length v7, v5

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    .line 1843
    const/4 v6, 0x0

    goto :goto_0

    .line 1840
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
