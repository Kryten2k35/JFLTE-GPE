.class public Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/shared/h;


# instance fields
.field HY:Ljava/lang/String;

.field HZ:Ljava/lang/String;

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/h;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/shared/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;->CREATOR:Lcom/google/android/gms/auth/firstparty/shared/h;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;->HY:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;->HZ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/shared/h;->a(Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;Landroid/os/Parcel;I)V

    return-void
.end method
