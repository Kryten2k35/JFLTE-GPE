.class final Landroid/net/nsd/DnsSdTxtRecord$1;
.super Ljava/lang/Object;
.source "DnsSdTxtRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/nsd/DnsSdTxtRecord;
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
        "Landroid/net/nsd/DnsSdTxtRecord;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/nsd/DnsSdTxtRecord;
    .locals 2
    .param p1    # Landroid/os/Parcel;

    new-instance v0, Landroid/net/nsd/DnsSdTxtRecord;

    invoke-direct {v0}, Landroid/net/nsd/DnsSdTxtRecord;-><init>()V

    # getter for: Landroid/net/nsd/DnsSdTxtRecord;->mData:[B
    invoke-static {v0}, Landroid/net/nsd/DnsSdTxtRecord;->access$000(Landroid/net/nsd/DnsSdTxtRecord;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Landroid/net/nsd/DnsSdTxtRecord$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/nsd/DnsSdTxtRecord;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/nsd/DnsSdTxtRecord;
    .locals 1
    .param p1    # I

    new-array v0, p1, [Landroid/net/nsd/DnsSdTxtRecord;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Landroid/net/nsd/DnsSdTxtRecord$1;->newArray(I)[Landroid/net/nsd/DnsSdTxtRecord;

    move-result-object v0

    return-object v0
.end method
