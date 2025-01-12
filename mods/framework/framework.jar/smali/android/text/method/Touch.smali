.class public Landroid/text/method/Touch;
.super Ljava/lang/Object;
.source "Touch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/Touch$DragState;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInitialScrollX(Landroid/widget/TextView;Landroid/text/Spannable;)I
    .locals 4
    .param p0    # Landroid/widget/TextView;
    .param p1    # Landroid/text/Spannable;

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/method/Touch$DragState;

    invoke-interface {p1, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/Touch$DragState;

    array-length v1, v0

    if-lez v1, :cond_0

    aget-object v1, v0, v3

    iget v1, v1, Landroid/text/method/Touch$DragState;->mScrollX:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getInitialScrollY(Landroid/widget/TextView;Landroid/text/Spannable;)I
    .locals 4
    .param p0    # Landroid/widget/TextView;
    .param p1    # Landroid/text/Spannable;

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/method/Touch$DragState;

    invoke-interface {p1, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/Touch$DragState;

    array-length v1, v0

    if-lez v1, :cond_0

    aget-object v1, v0, v3

    iget v1, v1, Landroid/text/method/Touch$DragState;->mScrollY:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method static isActivelySelecting(Landroid/text/Spannable;)Z
    .locals 4
    .param p0    # Landroid/text/Spannable;

    const/4 v1, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Landroid/text/method/Touch$DragState;

    invoke-interface {p0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/Touch$DragState;

    array-length v2, v0

    if-lez v2, :cond_0

    aget-object v2, v0, v1

    iget-boolean v2, v2, Landroid/text/method/Touch$DragState;->mIsActivelySelecting:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method static isSelectionStarted(Landroid/text/Spannable;)Z
    .locals 4
    .param p0    # Landroid/text/Spannable;

    const/4 v1, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Landroid/text/method/Touch$DragState;

    invoke-interface {p0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/Touch$DragState;

    array-length v2, v0

    if-lez v2, :cond_0

    aget-object v2, v0, v1

    iget-boolean v2, v2, Landroid/text/method/Touch$DragState;->mIsSelectionStarted:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 22
    .param p0    # Landroid/widget/TextView;
    .param p1    # Landroid/text/Spannable;
    .param p2    # Landroid/view/MotionEvent;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    :cond_0
    const/16 v17, 0x0

    :goto_0
    return v17

    :pswitch_0
    const/16 v17, 0x0

    invoke-interface/range {p1 .. p1}, Landroid/text/Spannable;->length()I

    move-result v18

    const-class v19, Landroid/text/method/Touch$DragState;

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/method/Touch$DragState;

    const/4 v9, 0x0

    :goto_1
    array-length v0, v6

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_1

    aget-object v17, v6, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    new-instance v17, Landroid/text/method/Touch$DragState;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v21

    invoke-direct/range {v17 .. v21}, Landroid/text/method/Touch$DragState;-><init>(FFII)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x11

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    const/16 v17, 0x1

    goto :goto_0

    :pswitch_1
    const/16 v17, 0x0

    invoke-interface/range {p1 .. p1}, Landroid/text/Spannable;->length()I

    move-result v18

    const-class v19, Landroid/text/method/Touch$DragState;

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/method/Touch$DragState;

    const/4 v9, 0x0

    :goto_2
    array-length v0, v6

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_2

    aget-object v17, v6, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    array-length v0, v6

    move/from16 v17, v0

    if-lez v17, :cond_3

    const/16 v17, 0x0

    aget-object v17, v6, v17

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/text/method/Touch$DragState;->mUsed:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_3
    const/16 v17, 0x0

    goto/16 :goto_0

    :pswitch_2
    const/16 v17, 0x0

    invoke-interface/range {p1 .. p1}, Landroid/text/Spannable;->length()I

    move-result v18

    const-class v19, Landroid/text/method/Touch$DragState;

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/method/Touch$DragState;

    array-length v0, v6

    move/from16 v17, v0

    if-lez v17, :cond_0

    const/16 v17, 0x0

    aget-object v17, v6, v17

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/text/method/Touch$DragState;->mIsSelectionStarted:Z

    const/16 v17, 0x0

    aget-object v17, v6, v17

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/text/method/Touch$DragState;->mFarEnough:Z

    move/from16 v17, v0

    if-nez v17, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    const/16 v18, 0x0

    aget-object v18, v6, v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/method/Touch$DragState;->mX:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v17, v17, v18

    if-gez v17, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    const/16 v18, 0x0

    aget-object v18, v6, v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/method/Touch$DragState;->mY:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v17, v17, v18

    if-ltz v17, :cond_5

    :cond_4
    const/16 v17, 0x0

    aget-object v17, v6, v17

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/text/method/Touch$DragState;->mFarEnough:Z

    const/16 v17, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v17

    if-eqz v17, :cond_5

    const/16 v17, 0x0

    aget-object v17, v6, v17

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/text/method/Touch$DragState;->mIsActivelySelecting:Z

    const/16 v17, 0x0

    aget-object v17, v6, v17

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/text/method/Touch$DragState;->mIsSelectionStarted:Z

    :cond_5
    const/16 v17, 0x0

    aget-object v17, v6, v17

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/text/method/Touch$DragState;->mFarEnough:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    const/16 v17, 0x0

    aget-object v17, v6, v17

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/text/method/Touch$DragState;->mUsed:Z

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v17

    and-int/lit8 v17, v17, 0x1

    if-nez v17, :cond_6

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    const/16 v17, 0x800

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v17

    if-eqz v17, :cond_b

    :cond_6
    const/4 v5, 0x1

    :goto_3
    const/16 v17, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v17

    if-nez v17, :cond_7

    const/16 v17, 0x0

    aget-object v17, v6, v17

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/text/method/Touch$DragState;->mIsActivelySelecting:Z

    :cond_7
    if-eqz v5, :cond_c

    const/16 v17, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    const/16 v18, 0x0

    aget-object v18, v6, v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/method/Touch$DragState;->mX:F

    move/from16 v18, v0

    sub-float v7, v17, v18

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    const/16 v18, 0x0

    aget-object v18, v6, v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/method/Touch$DragState;->mY:F

    move/from16 v18, v0

    sub-float v8, v17, v18

    :goto_4
    const/16 v17, 0x0

    aget-object v17, v6, v17

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/text/method/Touch$DragState;->mX:F

    const/16 v17, 0x0

    aget-object v17, v6, v17

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/text/method/Touch$DragState;->mY:F

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v17

    float-to-int v0, v7

    move/from16 v18, v0

    add-int v11, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v17

    float-to-int v0, v8

    move/from16 v18, v0

    add-int v12, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v18

    add-int v15, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/text/Layout;->getHeight()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHeight()I

    move-result v18

    sub-int v18, v18, v15

    sub-int v17, v17, v18

    move/from16 v0, v17

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v14

    const/16 v17, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v17

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    invoke-static {v0, v10, v11, v12}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v17

    move/from16 v0, v17

    if-ne v13, v0, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v17

    move/from16 v0, v17

    if-eq v14, v0, :cond_a

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->cancelLongPress()V

    :cond_a
    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_c
    const/16 v17, 0x0

    aget-object v17, v6, v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/text/method/Touch$DragState;->mX:F

    move/from16 v17, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    sub-float v7, v17, v18

    const/16 v17, 0x0

    aget-object v17, v6, v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/text/method/Touch$DragState;->mY:F

    move/from16 v17, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    sub-float v8, v17, v18

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V
    .locals 15
    .param p0    # Landroid/widget/TextView;
    .param p1    # Landroid/text/Layout;
    .param p2    # I
    .param p3    # I

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v13

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v14

    add-int v6, v13, v14

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v13

    sub-int v4, v13, v6

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v13

    if-lez v13, :cond_0

    const/4 v9, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v13

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v14

    add-int v12, v13, v14

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v13

    add-int v13, v13, p3

    sub-int/2addr v13, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v5

    const v8, 0x7fffffff

    const/4 v10, 0x0

    move v7, v11

    :goto_1
    if-gt v7, v5, :cond_2

    int-to-float v13, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    float-to-int v8, v13

    int-to-float v13, v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineRight(I)F

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v13

    float-to-int v10, v13

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    move v10, v4

    :cond_2
    sub-int v3, v10, v8

    if-ge v3, v4, :cond_8

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v2, v13, :cond_3

    sub-int v13, v4, v3

    div-int/lit8 v13, v13, 0x2

    sub-int p2, v8, v13

    :goto_2
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->scrollTo(II)V

    return-void

    :cond_3
    if-eqz v9, :cond_4

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-eq v2, v13, :cond_6

    :cond_4
    if-nez v9, :cond_5

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-eq v2, v13, :cond_6

    :cond_5
    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v2, v13, :cond_7

    :cond_6
    sub-int v13, v4, v3

    sub-int p2, v8, v13

    goto :goto_2

    :cond_7
    move/from16 p2, v8

    goto :goto_2

    :cond_8
    sub-int v13, v10, v4

    move/from16 v0, p2

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result p2

    move/from16 v0, p2

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_2
.end method
