.class public Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/GpsRunner;
.super Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;
.source "GpsRunner.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/os/Looper;
    .param p3    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V

    return-void
.end method


# virtual methods
.method public final disable()V
    .locals 0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->disable()V

    return-void
.end method

.method public final enable()V
    .locals 0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->enable()V

    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_GPS:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getContextValueNames()[Ljava/lang/String;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Altitude"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Bearing"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Speed"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Accuracy"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Valid"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SVCount"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getLocationProvider()Ljava/lang/String;
    .locals 1

    const-string v0, "gps"

    return-object v0
.end method

.method protected final getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    return-object p0
.end method

.method protected final getPowerResetObserver()Landroid/hardware/contextaware/manager/IApPowerResetObserver;
    .locals 0

    return-object p0
.end method
