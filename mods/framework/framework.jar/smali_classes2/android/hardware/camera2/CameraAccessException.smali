.class public Landroid/hardware/camera2/CameraAccessException;
.super Landroid/util/AndroidException;
.source "CameraAccessException.java"


# static fields
.field public static final CAMERA_DEPRECATED_HAL:I = 0x3e8

.field public static final CAMERA_DISABLED:I = 0x1

.field public static final CAMERA_DISCONNECTED:I = 0x2

.field public static final CAMERA_ERROR:I = 0x3

.field public static final CAMERA_IN_USE:I = 0x4

.field public static final MAX_CAMERAS_IN_USE:I = 0x5

.field private static final serialVersionUID:J = 0x4e22fb28f3a4e7dbL


# instance fields
.field private final mReason:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1    # I

    invoke-static {p1}, Landroid/hardware/camera2/CameraAccessException;->getDefaultMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/Throwable;

    invoke-direct {p0, p2, p3}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 1
    .param p1    # I
    .param p2    # Ljava/lang/Throwable;

    invoke-static {p1}, Landroid/hardware/camera2/CameraAccessException;->getDefaultMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    return-void
.end method

.method public static getDefaultMessage(I)Ljava/lang/String;
    .locals 1
    .param p0    # I

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "The camera device is in use already"

    goto :goto_0

    :pswitch_1
    const-string v0, "The system-wide limit for number of open cameras has been reached, and more camera devices cannot be opened until previous instances are closed."

    goto :goto_0

    :pswitch_2
    const-string v0, "The camera device is removable and has been disconnected from the Android device, or the camera service has shut down the connection due to a higher-priority access request for the camera device."

    goto :goto_0

    :pswitch_3
    const-string v0, "The camera is disabled due to a device policy, and cannot be opened."

    goto :goto_0

    :pswitch_4
    const-string v0, "The camera device is currently in the error state; no further calls to it will succeed."

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final getReason()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    return v0
.end method
