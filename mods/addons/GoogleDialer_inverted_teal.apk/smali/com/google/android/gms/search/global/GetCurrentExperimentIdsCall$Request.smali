.class public Lcom/google/android/gms/search/global/GetCurrentExperimentIdsCall$Request;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/search/global/GetCurrentExperimentIdsCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/search/global/a;


# instance fields
.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/search/global/a;

    invoke-direct {v0}, Lcom/google/android/gms/search/global/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/search/global/GetCurrentExperimentIdsCall$Request;->CREATOR:Lcom/google/android/gms/search/global/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/search/global/GetCurrentExperimentIdsCall$Request;->mVersionCode:I

    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/search/global/GetCurrentExperimentIdsCall$Request;->mVersionCode:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/search/global/GetCurrentExperimentIdsCall$Request;->CREATOR:Lcom/google/android/gms/search/global/a;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/search/global/GetCurrentExperimentIdsCall$Request;->CREATOR:Lcom/google/android/gms/search/global/a;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/search/global/a;->a(Lcom/google/android/gms/search/global/GetCurrentExperimentIdsCall$Request;Landroid/os/Parcel;I)V

    return-void
.end method
