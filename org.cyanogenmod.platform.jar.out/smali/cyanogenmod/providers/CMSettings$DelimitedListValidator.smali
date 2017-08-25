.class final Lcyanogenmod/providers/CMSettings$DelimitedListValidator;
.super Ljava/lang/Object;
.source "CMSettings.java"

# interfaces
.implements Lcyanogenmod/providers/CMSettings$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/providers/CMSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DelimitedListValidator"
.end annotation


# instance fields
.field private final mAllowEmptyList:Z

.field private final mDelimiter:Ljava/lang/String;

.field private final mValidValueSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "validValues"    # [Ljava/lang/String;
    .param p2, "delimiter"    # Ljava/lang/String;
    .param p3, "allowEmptyList"    # Z

    .prologue
    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    new-instance v0, Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcyanogenmod/providers/CMSettings$DelimitedListValidator;->mValidValueSet:Landroid/util/ArraySet;

    .line 396
    iput-object p2, p0, Lcyanogenmod/providers/CMSettings$DelimitedListValidator;->mDelimiter:Ljava/lang/String;

    .line 397
    iput-boolean p3, p0, Lcyanogenmod/providers/CMSettings$DelimitedListValidator;->mAllowEmptyList:Z

    .line 398
    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;)Z
    .locals 9
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 402
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 403
    .local v5, "values":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 404
    iget-object v8, p0, Lcyanogenmod/providers/CMSettings$DelimitedListValidator;->mDelimiter:Ljava/lang/String;

    invoke-static {v8}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, "array":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 406
    .local v3, "item":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 405
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 409
    :cond_0
    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 412
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "array":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "item":Ljava/lang/String;
    .end local v4    # "len$":I
    :cond_1
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 413
    iget-object v8, p0, Lcyanogenmod/providers/CMSettings$DelimitedListValidator;->mValidValueSet:Landroid/util/ArraySet;

    invoke-virtual {v5, v8}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z

    .line 416
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-nez v8, :cond_3

    .line 421
    :cond_2
    :goto_2
    return v6

    :cond_3
    move v6, v7

    .line 416
    goto :goto_2

    .line 417
    :cond_4
    iget-boolean v8, p0, Lcyanogenmod/providers/CMSettings$DelimitedListValidator;->mAllowEmptyList:Z

    if-nez v8, :cond_2

    move v6, v7

    .line 421
    goto :goto_2
.end method
