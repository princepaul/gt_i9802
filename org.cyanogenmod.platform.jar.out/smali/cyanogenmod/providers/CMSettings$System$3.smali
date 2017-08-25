.class final Lcyanogenmod/providers/CMSettings$System$3;
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
    .line 1732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;)Z
    .locals 13
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1735
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1790
    :cond_0
    :goto_0
    return v8

    .line 1739
    :cond_1
    const-string v10, "\\|"

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    .line 1740
    .local v6, "packageValuesString":Ljava/lang/String;
    const-string v10, "="

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1741
    .local v5, "packageValues":[Ljava/lang/String;
    array-length v10, v5

    if-eq v10, v12, :cond_2

    move v8, v9

    .line 1746
    goto :goto_0

    .line 1748
    :cond_2
    aget-object v4, v5, v9

    .line 1749
    .local v4, "packageName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v8, v9

    .line 1751
    goto :goto_0

    .line 1753
    :cond_3
    aget-object v10, v5, v8

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1754
    .local v7, "values":[Ljava/lang/String;
    array-length v10, v7

    const/4 v11, 0x3

    if-eq v10, v11, :cond_4

    move v8, v9

    .line 1758
    goto :goto_0

    .line 1762
    :cond_4
    :try_start_0
    # getter for: Lcyanogenmod/providers/CMSettings;->sColorValidator:Lcyanogenmod/providers/CMSettings$Validator;
    invoke-static {}, Lcyanogenmod/providers/CMSettings;->access$100()Lcyanogenmod/providers/CMSettings$Validator;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-interface {v10, v11}, Lcyanogenmod/providers/CMSettings$Validator;->validate(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    move v8, v9

    .line 1767
    goto :goto_0

    .line 1770
    :cond_5
    # getter for: Lcyanogenmod/providers/CMSettings;->sNonNegativeIntegerValidator:Lcyanogenmod/providers/CMSettings$Validator;
    invoke-static {}, Lcyanogenmod/providers/CMSettings;->access$300()Lcyanogenmod/providers/CMSettings$Validator;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-interface {v10, v11}, Lcyanogenmod/providers/CMSettings$Validator;->validate(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    move v8, v9

    .line 1775
    goto :goto_0

    .line 1778
    :cond_6
    # getter for: Lcyanogenmod/providers/CMSettings;->sNonNegativeIntegerValidator:Lcyanogenmod/providers/CMSettings$Validator;
    invoke-static {}, Lcyanogenmod/providers/CMSettings;->access$300()Lcyanogenmod/providers/CMSettings$Validator;

    move-result-object v10

    const/4 v11, 0x2

    aget-object v11, v7, v11

    invoke-interface {v10, v11}, Lcyanogenmod/providers/CMSettings$Validator;->validate(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-nez v10, :cond_7

    move v8, v9

    .line 1783
    goto :goto_0

    .line 1785
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    move v8, v9

    .line 1786
    goto :goto_0

    .line 1739
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
