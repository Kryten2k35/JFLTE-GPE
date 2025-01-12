.class Landroid/content/res/StringBlock$Height;
.super Ljava/lang/Object;
.source "StringBlock.java"

# interfaces
.implements Landroid/text/style/LineHeightSpan$WithDensity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/StringBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Height"
.end annotation


# static fields
.field private static sProportion:F


# instance fields
.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Landroid/content/res/StringBlock$Height;->sProportion:F

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/content/res/StringBlock$Height;->mSize:I

    return-void
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 8
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # Landroid/graphics/Paint$FontMetricsInt;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/content/res/StringBlock$Height;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    return-void
.end method

.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V
    .locals 7
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # Landroid/graphics/Paint$FontMetricsInt;
    .param p7    # Landroid/text/TextPaint;

    const/4 v6, 0x0

    iget v3, p0, Landroid/content/res/StringBlock$Height;->mSize:I

    if-eqz p7, :cond_0

    int-to-float v4, v3

    iget v5, p7, Landroid/text/TextPaint;->density:F

    mul-float/2addr v4, v5

    float-to-int v3, v4

    :cond_0
    iget v4, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v5, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v4, v5

    if-ge v4, v3, :cond_1

    iget v4, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v4, v3

    iput v4, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v4, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v4, v3

    iput v4, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    :goto_0
    return-void

    :cond_1
    sget v4, Landroid/content/res/StringBlock$Height;->sProportion:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/high16 v4, 0x42c80000

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const-string v4, "ABCDEFG"

    const/4 v5, 0x7

    invoke-virtual {v1, v4, v6, v5, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v4, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    div-float/2addr v4, v5

    sput v4, Landroid/content/res/StringBlock$Height;->sProportion:F

    :cond_2
    iget v4, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    sget v5, Landroid/content/res/StringBlock$Height;->sProportion:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    iget v4, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int v4, v3, v4

    if-lt v4, v0, :cond_3

    iget v4, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v4, v3

    iput v4, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v4, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v4, v3

    iput v4, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    goto :goto_0

    :cond_3
    if-lt v3, v0, :cond_4

    neg-int v4, v0

    iput v4, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v4, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v4, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v4, v3

    iput v4, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v4, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_0

    :cond_4
    neg-int v4, v3

    iput v4, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v4, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput v6, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v6, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_0
.end method
