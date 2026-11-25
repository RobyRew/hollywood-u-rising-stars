.class final Lcom/amazon/identity/auth/device/dataobject/RequestedScope$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/amazon/identity/auth/device/dataobject/RequestedScope;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/identity/auth/device/dataobject/RequestedScope;
    .locals 1

    .prologue
    .line 211
    new-instance v0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/identity/auth/device/dataobject/RequestedScope;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/amazon/identity/auth/device/dataobject/RequestedScope;
    .locals 1

    .prologue
    .line 216
    new-array v0, p1, [Lcom/amazon/identity/auth/device/dataobject/RequestedScope;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$1;->newArray(I)[Lcom/amazon/identity/auth/device/dataobject/RequestedScope;

    move-result-object v0

    return-object v0
.end method
