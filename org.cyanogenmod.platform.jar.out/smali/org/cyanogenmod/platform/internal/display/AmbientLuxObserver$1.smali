.class Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$1;
.super Ljava/lang/Object;
.source "AmbientLuxObserver.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$1;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 145
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v2, 0x0

    .line 136
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$1;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    # getter for: Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mLightSensorEnabled:Z
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->access$800(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$1;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    # getter for: Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mLuxHandler:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->access$900(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 140
    :cond_0
    return-void
.end method
