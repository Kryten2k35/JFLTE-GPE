.class Landroid/preference/MultiCheckPreference$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "MultiCheckPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/MultiCheckPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/preference/MultiCheckPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field values:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/preference/MultiCheckPreference$SavedState$1;

    invoke-direct {v0}, Landroid/preference/MultiCheckPreference$SavedState$1;-><init>()V

    sput-object v0, Landroid/preference/MultiCheckPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1    # Landroid/os/Parcel;

    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    iput-object v0, p0, Landroid/preference/MultiCheckPreference$SavedState;->values:[Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1    # Landroid/os/Parcelable;

    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/preference/MultiCheckPreference$SavedState;->values:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    return-void
.end method
