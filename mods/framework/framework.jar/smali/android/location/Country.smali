.class public Landroid/location/Country;
.super Ljava/lang/Object;
.source "Country.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final COUNTRY_SOURCE_LOCALE:I = 0x3

.field public static final COUNTRY_SOURCE_LOCATION:I = 0x1

.field public static final COUNTRY_SOURCE_NETWORK:I = 0x0

.field public static final COUNTRY_SOURCE_SIM:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/Country;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCountryIso:Ljava/lang/String;

.field private mHashCode:I

.field private final mSource:I

.field private final mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/location/Country$1;

    invoke-direct {v0}, Landroid/location/Country$1;-><init>()V

    sput-object v0, Landroid/location/Country;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/location/Country;)V
    .locals 2
    .param p1    # Landroid/location/Country;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    iput-object v0, p0, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    iget v0, p1, Landroid/location/Country;->mSource:I

    iput v0, p0, Landroid/location/Country;->mSource:I

    iget-wide v0, p1, Landroid/location/Country;->mTimestamp:J

    iput-wide v0, p0, Landroid/location/Country;->mTimestamp:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    iput p2, p0, Landroid/location/Country;->mSource:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/Country;->mTimestamp:J

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    iput p2, p0, Landroid/location/Country;->mSource:I

    iput-wide p3, p0, Landroid/location/Country;->mTimestamp:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IJLandroid/location/Country$1;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # J
    .param p5    # Landroid/location/Country$1;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/location/Country;-><init>(Ljava/lang/String;IJ)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Landroid/location/Country;

    if-eqz v3, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/location/Country;

    iget-object v3, p0, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/location/Country;->mSource:I

    invoke-virtual {v0}, Landroid/location/Country;->getSource()I

    move-result v4

    if-eq v3, v4, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public equalsIgnoreSource(Landroid/location/Country;)Z
    .locals 2
    .param p1    # Landroid/location/Country;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCountryIso()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method public final getSource()I
    .locals 1

    iget v0, p0, Landroid/location/Country;->mSource:I

    return v0
.end method

.method public final getTimestamp()J
    .locals 2

    iget-wide v0, p0, Landroid/location/Country;->mTimestamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroid/location/Country;->mHashCode:I

    if-nez v0, :cond_0

    const/16 v0, 0x11

    iget-object v1, p0, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0xdd

    mul-int/lit8 v1, v0, 0xd

    iget v2, p0, Landroid/location/Country;->mSource:I

    add-int v0, v1, v2

    iput v0, p0, Landroid/location/Country;->mHashCode:I

    :cond_0
    iget v1, p0, Landroid/location/Country;->mHashCode:I

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Country {ISO="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/Country;->mSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/location/Country;->mTimestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    iget-object v0, p0, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/location/Country;->mSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/location/Country;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
