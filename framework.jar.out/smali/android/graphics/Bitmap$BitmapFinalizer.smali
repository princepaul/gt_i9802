.class Landroid/graphics/Bitmap$BitmapFinalizer;
.super Ljava/lang/Object;
.source "Bitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapFinalizer"
.end annotation


# instance fields
.field private mNativeAllocationByteCount:I

.field private mNativeBitmap:J


# direct methods
.method constructor <init>(J)V
    .locals 1
    .param p1, "nativeBitmap"    # J

    .prologue
    .line 1646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1647
    iput-wide p1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J

    .line 1648
    return-void
.end method

.method static synthetic access$000(Landroid/graphics/Bitmap$BitmapFinalizer;)J
    .locals 2
    .param p0, "x0"    # Landroid/graphics/Bitmap$BitmapFinalizer;

    .prologue
    .line 1639
    iget-wide v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J

    return-wide v0
.end method


# virtual methods
.method public finalize()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 1663
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1667
    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap$BitmapFinalizer;->setNativeAllocationByteCount(I)V

    .line 1668
    iget-wide v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J

    # invokes: Landroid/graphics/Bitmap;->nativeDestructor(J)V
    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->access$200(J)V

    .line 1669
    iput-wide v4, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J

    .line 1671
    :goto_0
    return-void

    .line 1664
    :catch_0
    move-exception v0

    .line 1667
    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap$BitmapFinalizer;->setNativeAllocationByteCount(I)V

    .line 1668
    iget-wide v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J

    # invokes: Landroid/graphics/Bitmap;->nativeDestructor(J)V
    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->access$200(J)V

    .line 1669
    iput-wide v4, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J

    goto :goto_0

    .line 1667
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap$BitmapFinalizer;->setNativeAllocationByteCount(I)V

    .line 1668
    iget-wide v2, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J

    # invokes: Landroid/graphics/Bitmap;->nativeDestructor(J)V
    invoke-static {v2, v3}, Landroid/graphics/Bitmap;->access$200(J)V

    .line 1669
    iput-wide v4, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J

    throw v0
.end method

.method public setNativeAllocationByteCount(I)V
    .locals 2
    .param p1, "nativeByteCount"    # I

    .prologue
    .line 1651
    iget v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeAllocationByteCount:I

    if-eqz v0, :cond_0

    .line 1652
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeAllocationByteCount:I

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    .line 1654
    :cond_0
    iput p1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeAllocationByteCount:I

    .line 1655
    iget v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeAllocationByteCount:I

    if-eqz v0, :cond_1

    .line 1656
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeAllocationByteCount:I

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    .line 1658
    :cond_1
    return-void
.end method
