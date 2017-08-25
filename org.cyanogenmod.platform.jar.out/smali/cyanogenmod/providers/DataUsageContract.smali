.class public final Lcyanogenmod/providers/DataUsageContract;
.super Ljava/lang/Object;
.source "DataUsageContract.java"


# static fields
.field public static final ACTIVE:Ljava/lang/String; = "active"

.field public static final BASE_CONTENT_URI:Landroid/net/Uri;

.field public static final BYTES:Ljava/lang/String; = "bytes"

.field public static final COLUMN_OF_ACTIVE:I = 0x3

.field public static final COLUMN_OF_BYTES:I = 0x5

.field public static final COLUMN_OF_ENABLE:I = 0x2

.field public static final COLUMN_OF_EXTRA:I = 0xa

.field public static final COLUMN_OF_FAST_AVG:I = 0x8

.field public static final COLUMN_OF_FAST_SAMPLES:I = 0x9

.field public static final COLUMN_OF_ID:I = 0x0

.field public static final COLUMN_OF_LABEL:I = 0x4

.field public static final COLUMN_OF_SLOW_AVG:I = 0x6

.field public static final COLUMN_OF_SLOW_SAMPLES:I = 0x7

.field public static final COLUMN_OF_UID:I = 0x1

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.itemdatausage_item"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dirdatausage_item"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATAUSAGE_AUTHORITY:Ljava/lang/String; = "org.cyanogenmod.providers.datausage"

.field public static final DATAUSAGE_TABLE:Ljava/lang/String; = "datausage"

.field public static final ENABLE:Ljava/lang/String; = "enable"

.field public static final EXTRA:Ljava/lang/String; = "extra"

.field public static final FAST_AVG:Ljava/lang/String; = "fast_avg"

.field public static final FAST_SAMPLES:Ljava/lang/String; = "fast_samples"

.field public static final LABEL:Ljava/lang/String; = "label"

.field public static final PROJECTION_ALL:[Ljava/lang/String;

.field public static final SLOW_AVG:Ljava/lang/String; = "slow_avg"

.field public static final SLOW_SAMPLES:Ljava/lang/String; = "slow_samples"

.field public static final UID:Ljava/lang/String; = "uid"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const-string v0, "content://org.cyanogenmod.providers.datausage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcyanogenmod/providers/DataUsageContract;->BASE_CONTENT_URI:Landroid/net/Uri;

    .line 38
    sget-object v0, Lcyanogenmod/providers/DataUsageContract;->BASE_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "datausage"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcyanogenmod/providers/DataUsageContract;->CONTENT_URI:Landroid/net/Uri;

    .line 134
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "uid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "enable"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "active"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "label"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "bytes"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "slow_avg"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "slow_samples"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "fast_avg"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "fast_samples"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "extra"

    aput-object v2, v0, v1

    sput-object v0, Lcyanogenmod/providers/DataUsageContract;->PROJECTION_ALL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
