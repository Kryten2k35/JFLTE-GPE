.class Landroid/transition/TransitionSet$TransitionSetListener;
.super Landroid/transition/Transition$TransitionListenerAdapter;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/TransitionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransitionSetListener"
.end annotation


# instance fields
.field mTransitionSet:Landroid/transition/TransitionSet;


# direct methods
.method constructor <init>(Landroid/transition/TransitionSet;)V
    .locals 0
    .param p1    # Landroid/transition/TransitionSet;

    invoke-direct {p0}, Landroid/transition/Transition$TransitionListenerAdapter;-><init>()V

    iput-object p1, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2
    .param p1    # Landroid/transition/Transition;

    iget-object v0, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    iget v1, v0, Landroid/transition/TransitionSet;->mCurrentListeners:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/transition/TransitionSet;->mCurrentListeners:I

    iget-object v0, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    iget v0, v0, Landroid/transition/TransitionSet;->mCurrentListeners:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/transition/TransitionSet;->mStarted:Z

    iget-object v0, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    invoke-virtual {v0}, Landroid/transition/TransitionSet;->end()V

    :cond_0
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 2
    .param p1    # Landroid/transition/Transition;

    iget-object v0, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    iget-boolean v0, v0, Landroid/transition/TransitionSet;->mStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    invoke-virtual {v0}, Landroid/transition/TransitionSet;->start()V

    iget-object v0, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/transition/TransitionSet;->mStarted:Z

    :cond_0
    return-void
.end method
