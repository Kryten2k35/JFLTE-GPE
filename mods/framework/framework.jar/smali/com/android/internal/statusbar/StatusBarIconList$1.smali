.class final Lcom/android/internal/statusbar/StatusBarIconList$1;
.super Ljava/lang/Object;
.source "StatusBarIconList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/StatusBarIconList;
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
        "Lcom/android/internal/statusbar/StatusBarIconList;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/statusbar/StatusBarIconList;
    .locals 1
    .param p1    # Landroid/os/Parcel;

    new-instance v0, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v0, p1}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Lcom/android/internal/statusbar/StatusBarIconList$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/statusbar/StatusBarIconList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/statusbar/StatusBarIconList;
    .locals 1
    .param p1    # I

    new-array v0, p1, [Lcom/android/internal/statusbar/StatusBarIconList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/internal/statusbar/StatusBarIconList$1;->newArray(I)[Lcom/android/internal/statusbar/StatusBarIconList;

    move-result-object v0

    return-object v0
.end method
