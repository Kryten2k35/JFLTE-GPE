.class final Lcom/android/internal/widget/multiwaveview/Ease$Quad$3;
.super Ljava/lang/Object;
.source "Ease.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/multiwaveview/Ease$Quad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4
    .param p1    # F

    const/high16 v1, 0x3f000000

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000

    div-float/2addr p1, v1

    cmpg-float v0, p1, v2

    if-gez v0, :cond_0

    mul-float v0, v1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v3

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x41000000

    sub-float/2addr p1, v2

    const/high16 v1, 0x40000000

    sub-float v1, p1, v1

    mul-float/2addr v1, p1

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    goto :goto_0
.end method
