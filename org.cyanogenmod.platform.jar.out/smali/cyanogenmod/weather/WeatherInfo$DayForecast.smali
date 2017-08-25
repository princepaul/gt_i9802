.class public Lcyanogenmod/weather/WeatherInfo$DayForecast;
.super Ljava/lang/Object;
.source "WeatherInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/weather/WeatherInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DayForecast"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/weather/WeatherInfo$DayForecast$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/weather/WeatherInfo$DayForecast;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mConditionCode:I

.field mHigh:D

.field mKey:Ljava/lang/String;

.field mLow:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 544
    new-instance v0, Lcyanogenmod/weather/WeatherInfo$DayForecast$1;

    invoke-direct {v0}, Lcyanogenmod/weather/WeatherInfo$DayForecast$1;-><init>()V

    sput-object v0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 560
    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    .line 562
    .local v1, "parcelableVersion":I
    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 563
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mKey:Ljava/lang/String;

    .line 564
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mLow:D

    .line 565
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mHigh:D

    .line 566
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mConditionCode:I

    .line 570
    :cond_0
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 571
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcyanogenmod/weather/WeatherInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcyanogenmod/weather/WeatherInfo$1;

    .prologue
    .line 432
    invoke-direct {p0, p1}, Lcyanogenmod/weather/WeatherInfo$DayForecast;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Lcyanogenmod/weather/WeatherInfo$1;)V
    .locals 0
    .param p1, "x0"    # Lcyanogenmod/weather/WeatherInfo$1;

    .prologue
    .line 432
    invoke-direct {p0}, Lcyanogenmod/weather/WeatherInfo$DayForecast;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 592
    if-nez p1, :cond_1

    .line 598
    :cond_0
    :goto_0
    return v1

    .line 594
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 595
    check-cast v0, Lcyanogenmod/weather/WeatherInfo$DayForecast;

    .line 596
    .local v0, "forecast":Lcyanogenmod/weather/WeatherInfo$DayForecast;
    iget-object v1, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mKey:Ljava/lang/String;

    iget-object v2, v0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mKey:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method

.method public getConditionCode()I
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mConditionCode:I

    return v0
.end method

.method public getHigh()D
    .locals 2

    .prologue
    .line 514
    iget-wide v0, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mHigh:D

    return-wide v0
.end method

.method public getLow()D
    .locals 2

    .prologue
    .line 507
    iget-wide v0, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mLow:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 584
    const/16 v0, 0x1f

    .line 585
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 586
    .local v1, "result":I
    iget-object v2, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 587
    return v1

    .line 586
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{Low temp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mLow:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " High temp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mHigh:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Condition code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mConditionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 532
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 535
    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    iget-object v1, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 536
    iget-wide v2, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mLow:D

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 537
    iget-wide v2, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mHigh:D

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 538
    iget v1, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mConditionCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 542
    return-void
.end method
