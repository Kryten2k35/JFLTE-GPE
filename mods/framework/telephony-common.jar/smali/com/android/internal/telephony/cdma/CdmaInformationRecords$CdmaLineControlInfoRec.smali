.class public Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;
.super Ljava/lang/Object;
.source "CdmaInformationRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CdmaLineControlInfoRec"
.end annotation


# instance fields
.field public lineCtrlPolarityIncluded:B

.field public lineCtrlPowerDenial:B

.field public lineCtrlReverse:B

.field public lineCtrlToggle:B


# direct methods
.method public constructor <init>(IIII)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;->lineCtrlPolarityIncluded:B

    int-to-byte v0, p2

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;->lineCtrlToggle:B

    int-to-byte v0, p3

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;->lineCtrlReverse:B

    int-to-byte v0, p4

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;->lineCtrlPowerDenial:B

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CdmaLineControlInfoRec: { lineCtrlPolarityIncluded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;->lineCtrlPolarityIncluded:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lineCtrlToggle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;->lineCtrlToggle:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lineCtrlReverse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;->lineCtrlReverse:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lineCtrlPowerDenial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;->lineCtrlPowerDenial:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
