.class final Landroid/location/Address$1;
.super Ljava/lang/Object;
.source "Address.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Address;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/location/Address;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/Address;
    .locals 14
    .param p1    # Landroid/os/Parcel;

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    new-instance v7, Ljava/util/Locale;

    invoke-direct {v7, v5, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v1, Landroid/location/Address;

    invoke-direct {v1, v7}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, v0}, Ljava/util/HashMap;-><init>(I)V

    # setter for: Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;
    invoke-static {v1, v8}, Landroid/location/Address;->access$002(Landroid/location/Address;Ljava/util/HashMap;)Ljava/util/HashMap;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    # getter for: Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/location/Address;->access$000(Landroid/location/Address;)Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    # getter for: Landroid/location/Address;->mMaxAddressLineIndex:I
    invoke-static {v1}, Landroid/location/Address;->access$100(Landroid/location/Address;)I

    move-result v8

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    # setter for: Landroid/location/Address;->mMaxAddressLineIndex:I
    invoke-static {v1, v8}, Landroid/location/Address;->access$102(Landroid/location/Address;I)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    new-instance v7, Ljava/util/Locale;

    invoke-direct {v7, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    # setter for: Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;
    invoke-static {v1, v8}, Landroid/location/Address;->access$002(Landroid/location/Address;Ljava/util/HashMap;)Ljava/util/HashMap;

    const/4 v8, -0x1

    # setter for: Landroid/location/Address;->mMaxAddressLineIndex:I
    invoke-static {v1, v8}, Landroid/location/Address;->access$102(Landroid/location/Address;I)I

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    # setter for: Landroid/location/Address;->mFeatureName:Ljava/lang/String;
    invoke-static {v1, v8}, Landroid/location/Address;->access$202(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    # setter for: Landroid/location/Address;->mAdminArea:Ljava/lang/String;
    invoke-static {v1, v8}, Landroid/location/Address;->access$302(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    # setter for: Landroid/location/Address;->mSubAdminArea:Ljava/lang/String;
    invoke-static {v1, v8}, Landroid/location/Address;->access$402(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    # setter for: Landroid/location/Address;->mLocality:Ljava/lang/String;
    invoke-static {v1, v8}, Landroid/location/Address;->access$502(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    # setter for: Landroid/location/Address;->mSubLocality:Ljava/lang/String;
    invoke-static {v1, v8}, Landroid/location/Address;->access$602(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    # setter for: Landroid/location/Address;->mThoroughfare:Ljava/lang/String;
    invoke-static {v1, v8}, Landroid/location/Address;->access$702(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    # setter for: Landroid/location/Address;->mSubThoroughfare:Ljava/lang/String;
    invoke-static {v1, v8}, Landroid/location/Address;->access$802(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    # setter for: Landroid/location/Address;->mPremises:Ljava/lang/String;
    invoke-static {v1, v8}, Landroid/location/Address;->access$902(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    # setter for: Landroid/location/Address;->mPostalCode:Ljava/lang/String;
    invoke-static {v1, v8}, Landroid/location/Address;->access$1002(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    # setter for: Landroid/location/Address;->mCountryCode:Ljava/lang/String;
    invoke-static {v1, v8}, Landroid/location/Address;->access$1102(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    # setter for: Landroid/location/Address;->mCountryName:Ljava/lang/String;
    invoke-static {v1, v8}, Landroid/location/Address;->access$1202(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-nez v8, :cond_5

    move v8, v9

    :goto_2
    # setter for: Landroid/location/Address;->mHasLatitude:Z
    invoke-static {v1, v8}, Landroid/location/Address;->access$1302(Landroid/location/Address;Z)Z

    # getter for: Landroid/location/Address;->mHasLatitude:Z
    invoke-static {v1}, Landroid/location/Address;->access$1300(Landroid/location/Address;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v12

    # setter for: Landroid/location/Address;->mLatitude:D
    invoke-static {v1, v12, v13}, Landroid/location/Address;->access$1402(Landroid/location/Address;D)D

    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-nez v8, :cond_6

    :goto_3
    # setter for: Landroid/location/Address;->mHasLongitude:Z
    invoke-static {v1, v9}, Landroid/location/Address;->access$1502(Landroid/location/Address;Z)Z

    # getter for: Landroid/location/Address;->mHasLongitude:Z
    invoke-static {v1}, Landroid/location/Address;->access$1500(Landroid/location/Address;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    # setter for: Landroid/location/Address;->mLongitude:D
    invoke-static {v1, v8, v9}, Landroid/location/Address;->access$1602(Landroid/location/Address;D)D

    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    # setter for: Landroid/location/Address;->mPhone:Ljava/lang/String;
    invoke-static {v1, v8}, Landroid/location/Address;->access$1702(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    # setter for: Landroid/location/Address;->mUrl:Ljava/lang/String;
    invoke-static {v1, v8}, Landroid/location/Address;->access$1802(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v8

    # setter for: Landroid/location/Address;->mExtras:Landroid/os/Bundle;
    invoke-static {v1, v8}, Landroid/location/Address;->access$1902(Landroid/location/Address;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-object v1

    :cond_5
    move v8, v10

    goto :goto_2

    :cond_6
    move v9, v10

    goto :goto_3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Landroid/location/Address$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/Address;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/location/Address;
    .locals 1
    .param p1    # I

    new-array v0, p1, [Landroid/location/Address;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Landroid/location/Address$1;->newArray(I)[Landroid/location/Address;

    move-result-object v0

    return-object v0
.end method
