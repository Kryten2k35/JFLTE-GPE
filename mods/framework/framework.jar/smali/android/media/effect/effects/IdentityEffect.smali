.class public Landroid/media/effect/effects/IdentityEffect;
.super Landroid/media/effect/FilterEffect;
.source "IdentityEffect.java"


# direct methods
.method public constructor <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/media/effect/EffectContext;
    .param p2    # Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Landroid/media/effect/FilterEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public apply(IIII)V
    .locals 2
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    invoke-virtual {p0}, Landroid/media/effect/effects/IdentityEffect;->beginGLEffect()V

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/effect/effects/IdentityEffect;->frameFromTexture(III)Landroid/filterfw/core/Frame;

    move-result-object v0

    invoke-virtual {p0, p4, p2, p3}, Landroid/media/effect/effects/IdentityEffect;->frameFromTexture(III)Landroid/filterfw/core/Frame;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    invoke-virtual {p0}, Landroid/media/effect/effects/IdentityEffect;->endGLEffect()V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/Object;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown parameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for IdentityEffect!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
