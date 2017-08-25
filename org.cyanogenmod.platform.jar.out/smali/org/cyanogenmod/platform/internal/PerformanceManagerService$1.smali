.class Lorg/cyanogenmod/platform/internal/PerformanceManagerService$1;
.super Lcyanogenmod/power/IPerformanceManager$Stub;
.source "PerformanceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/PerformanceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-direct {p0}, Lcyanogenmod/power/IPerformanceManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cpuBoost(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 309
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->cpuBoostInternal(I)V
    invoke-static {v0, p1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->access$200(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;I)V

    .line 310
    return-void
.end method

.method public getNumberOfProfiles()I
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mNumProfiles:I
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->access$400(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)I

    move-result v0

    return v0
.end method

.method public getPowerProfile()I
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->getUserProfile()I
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->access$300(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)I

    move-result v0

    return v0
.end method

.method public getProfileHasAppProfiles(I)Z
    .locals 1
    .param p1, "profile"    # I

    .prologue
    .line 324
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->getProfileHasAppProfilesInternal(I)Z
    invoke-static {v0, p1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->access$500(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;I)Z

    move-result v0

    return v0
.end method

.method public setPowerProfile(I)Z
    .locals 2
    .param p1, "profile"    # I

    .prologue
    .line 298
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    const/4 v1, 0x1

    # invokes: Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->setPowerProfileInternal(IZ)Z
    invoke-static {v0, p1, v1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->access$100(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;IZ)Z

    move-result v0

    return v0
.end method
