.class final Landroid/hardware/camera2/impl/CameraMetadataNative$1;
.super Ljava/lang/Object;
.source "CameraMetadataNative.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraMetadataNative;
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
        "Landroid/hardware/camera2/impl/CameraMetadataNative;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 1
    .param p1    # Landroid/os/Parcel;

    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 1
    .param p1    # I

    new-array v0, p1, [Landroid/hardware/camera2/impl/CameraMetadataNative;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative$1;->newArray(I)[Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0

    return-object v0
.end method
