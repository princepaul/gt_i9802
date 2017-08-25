.class public final Lcyanogenmod/media/AudioSessionInfo;
.super Ljava/lang/Object;
.source "AudioSessionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/media/AudioSessionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mChannelMask:I

.field private final mFlags:I

.field private final mSessionId:I

.field private final mStream:I

.field private final mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 162
    new-instance v0, Lcyanogenmod/media/AudioSessionInfo$1;

    invoke-direct {v0}, Lcyanogenmod/media/AudioSessionInfo$1;-><init>()V

    sput-object v0, Lcyanogenmod/media/AudioSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "stream"    # I
    .param p3, "flags"    # I
    .param p4, "channelMask"    # I
    .param p5, "uid"    # I

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lcyanogenmod/media/AudioSessionInfo;->mSessionId:I

    .line 66
    iput p2, p0, Lcyanogenmod/media/AudioSessionInfo;->mStream:I

    .line 67
    iput p3, p0, Lcyanogenmod/media/AudioSessionInfo;->mFlags:I

    .line 68
    iput p4, p0, Lcyanogenmod/media/AudioSessionInfo;->mChannelMask:I

    .line 69
    iput p5, p0, Lcyanogenmod/media/AudioSessionInfo;->mUid:I

    .line 70
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 75
    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    .line 78
    .local v1, "parcelableVersion":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcyanogenmod/media/AudioSessionInfo;->mSessionId:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcyanogenmod/media/AudioSessionInfo;->mStream:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcyanogenmod/media/AudioSessionInfo;->mFlags:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcyanogenmod/media/AudioSessionInfo;->mChannelMask:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcyanogenmod/media/AudioSessionInfo;->mUid:I

    .line 84
    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    .line 89
    :cond_0
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 90
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcyanogenmod/media/AudioSessionInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcyanogenmod/media/AudioSessionInfo$1;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcyanogenmod/media/AudioSessionInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 126
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcyanogenmod/media/AudioSessionInfo;

    if-nez v2, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 130
    check-cast v0, Lcyanogenmod/media/AudioSessionInfo;

    .line 131
    .local v0, "other":Lcyanogenmod/media/AudioSessionInfo;
    if-eq p0, v0, :cond_2

    iget v2, p0, Lcyanogenmod/media/AudioSessionInfo;->mSessionId:I

    iget v3, v0, Lcyanogenmod/media/AudioSessionInfo;->mSessionId:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcyanogenmod/media/AudioSessionInfo;->mStream:I

    iget v3, v0, Lcyanogenmod/media/AudioSessionInfo;->mStream:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcyanogenmod/media/AudioSessionInfo;->mFlags:I

    iget v3, v0, Lcyanogenmod/media/AudioSessionInfo;->mFlags:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcyanogenmod/media/AudioSessionInfo;->mChannelMask:I

    iget v3, v0, Lcyanogenmod/media/AudioSessionInfo;->mChannelMask:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcyanogenmod/media/AudioSessionInfo;->mUid:I

    iget v3, v0, Lcyanogenmod/media/AudioSessionInfo;->mUid:I

    if-ne v2, v3, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getChannelMask()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcyanogenmod/media/AudioSessionInfo;->mChannelMask:I

    return v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcyanogenmod/media/AudioSessionInfo;->mFlags:I

    return v0
.end method

.method public getSessionId()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcyanogenmod/media/AudioSessionInfo;->mSessionId:I

    return v0
.end method

.method public getStream()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcyanogenmod/media/AudioSessionInfo;->mStream:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcyanogenmod/media/AudioSessionInfo;->mUid:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 121
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcyanogenmod/media/AudioSessionInfo;->mSessionId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcyanogenmod/media/AudioSessionInfo;->mStream:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcyanogenmod/media/AudioSessionInfo;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcyanogenmod/media/AudioSessionInfo;->mChannelMask:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcyanogenmod/media/AudioSessionInfo;->mUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 114
    const-string v0, "audioSessionInfo[sessionId=%d, stream=%d, flags=%d, channelMask=%d, uid=%d"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcyanogenmod/media/AudioSessionInfo;->mSessionId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcyanogenmod/media/AudioSessionInfo;->mStream:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcyanogenmod/media/AudioSessionInfo;->mFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcyanogenmod/media/AudioSessionInfo;->mChannelMask:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcyanogenmod/media/AudioSessionInfo;->mUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 149
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 152
    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    iget v1, p0, Lcyanogenmod/media/AudioSessionInfo;->mSessionId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget v1, p0, Lcyanogenmod/media/AudioSessionInfo;->mStream:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget v1, p0, Lcyanogenmod/media/AudioSessionInfo;->mFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget v1, p0, Lcyanogenmod/media/AudioSessionInfo;->mChannelMask:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget v1, p0, Lcyanogenmod/media/AudioSessionInfo;->mUid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 159
    return-void
.end method
