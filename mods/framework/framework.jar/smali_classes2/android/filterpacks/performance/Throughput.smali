.class public Landroid/filterpacks/performance/Throughput;
.super Ljava/lang/Object;
.source "Throughput.java"


# instance fields
.field private final mPeriodFrames:I

.field private final mPeriodTime:I

.field private final mPixels:I

.field private final mTotalFrames:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/filterpacks/performance/Throughput;->mTotalFrames:I

    iput p2, p0, Landroid/filterpacks/performance/Throughput;->mPeriodFrames:I

    iput p3, p0, Landroid/filterpacks/performance/Throughput;->mPeriodTime:I

    iput p4, p0, Landroid/filterpacks/performance/Throughput;->mPixels:I

    return-void
.end method


# virtual methods
.method public getFramesPerSecond()F
    .locals 2

    iget v0, p0, Landroid/filterpacks/performance/Throughput;->mPeriodFrames:I

    int-to-float v0, v0

    iget v1, p0, Landroid/filterpacks/performance/Throughput;->mPeriodTime:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getNanosPerPixel()F
    .locals 6

    iget v2, p0, Landroid/filterpacks/performance/Throughput;->mPeriodTime:I

    int-to-double v2, v2

    iget v4, p0, Landroid/filterpacks/performance/Throughput;->mPeriodFrames:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    const-wide v4, 0x412e848000000000L

    mul-double v0, v2, v4

    iget v2, p0, Landroid/filterpacks/performance/Throughput;->mPixels:I

    int-to-double v2, v2

    div-double v2, v0, v2

    double-to-float v2, v2

    return v2
.end method

.method public getPeriodFrameCount()I
    .locals 1

    iget v0, p0, Landroid/filterpacks/performance/Throughput;->mPeriodFrames:I

    return v0
.end method

.method public getPeriodTime()I
    .locals 1

    iget v0, p0, Landroid/filterpacks/performance/Throughput;->mPeriodTime:I

    return v0
.end method

.method public getTotalFrameCount()I
    .locals 1

    iget v0, p0, Landroid/filterpacks/performance/Throughput;->mTotalFrames:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/filterpacks/performance/Throughput;->getFramesPerSecond()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FPS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
