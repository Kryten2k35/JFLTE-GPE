.class public Landroid/text/SpannableString;
.super Landroid/text/SpannableStringInternal;
.source "SpannableString.java"

# interfaces
.implements Landroid/text/GetChars;
.implements Landroid/text/Spannable;
.implements Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/SpannableStringInternal;-><init>(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/text/SpannableStringInternal;-><init>(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public static valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;
    .locals 1
    .param p0    # Ljava/lang/CharSequence;

    instance-of v0, p0, Landroid/text/SpannableString;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/text/SpannableString;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;

    invoke-super {p0, p1}, Landroid/text/SpannableStringInternal;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getSpanEnd(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;

    invoke-super {p0, p1}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSpanFlags(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;

    invoke-super {p0, p1}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSpanStart(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;

    invoke-super {p0, p1}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # Ljava/lang/Class;

    invoke-super {p0, p1, p2, p3}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    invoke-super {p0}, Landroid/text/SpannableStringInternal;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic nextSpanTransition(IILjava/lang/Class;)I
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # Ljava/lang/Class;

    invoke-super {p0, p1, p2, p3}, Landroid/text/SpannableStringInternal;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    invoke-super {p0, p1}, Landroid/text/SpannableStringInternal;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .locals 0
    .param p1    # Ljava/lang/Object;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringInternal;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1    # I
    .param p2    # I

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method
