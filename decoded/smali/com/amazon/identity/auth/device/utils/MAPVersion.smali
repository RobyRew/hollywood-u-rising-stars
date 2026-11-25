.class public final Lcom/amazon/identity/auth/device/utils/MAPVersion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amazon/identity/auth/device/utils/MAPVersion;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final VERSION_SEPERATOR:Ljava/lang/String; = "\\."

.field public static final VERSION_ZERO:Lcom/amazon/identity/auth/device/utils/MAPVersion;


# instance fields
.field private final mVersion:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const-class v0, Lcom/amazon/identity/auth/device/utils/MAPVersion;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/utils/MAPVersion;->LOG_TAG:Ljava/lang/String;

    .line 20
    new-instance v0, Lcom/amazon/identity/auth/device/utils/MAPVersion;

    const-string/jumbo v1, "0.0.0"

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPVersion;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/utils/MAPVersion;->VERSION_ZERO:Lcom/amazon/identity/auth/device/utils/MAPVersion;

    .line 139
    new-instance v0, Lcom/amazon/identity/auth/device/utils/MAPVersion$1;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/utils/MAPVersion$1;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/utils/MAPVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 27
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amazon/identity/auth/device/utils/MAPVersion;->mVersion:[I

    .line 28
    iget-object v0, p0, Lcom/amazon/identity/auth/device/utils/MAPVersion;->mVersion:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 29
    sget-object v0, Lcom/amazon/identity/auth/device/utils/MAPVersion;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MAPVersion Created from PARCEL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/utils/MAPVersion;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Lcom/amazon/identity/auth/device/utils/MAPVersion;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MAPVersion from String : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    if-nez p1, :cond_0

    .line 53
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "version must not be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    const-string/jumbo v0, "\\."

    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 56
    array-length v0, v3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amazon/identity/auth/device/utils/MAPVersion;->mVersion:[I

    .line 58
    array-length v4, v3

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 61
    :try_start_0
    iget-object v6, p0, Lcom/amazon/identity/auth/device/utils/MAPVersion;->mVersion:[I

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v6, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :catch_0
    move-exception v5

    .line 63
    iget-object v5, p0, Lcom/amazon/identity/auth/device/utils/MAPVersion;->mVersion:[I

    aput v1, v5, v2

    goto :goto_1

    .line 67
    :cond_1
    return-void
.end method

.method public constructor <init>([I)V
    .locals 3

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-nez p1, :cond_0

    .line 38
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "version must not be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 42
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "Version must not be empty"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    iput-object p1, p0, Lcom/amazon/identity/auth/device/utils/MAPVersion;->mVersion:[I

    .line 45
    sget-object v0, Lcom/amazon/identity/auth/device/utils/MAPVersion;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MAPVersion Created : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/utils/MAPVersion;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/identity/auth/device/utils/MAPVersion;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 100
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/utils/MAPVersion;->getVersionInfo()[I

    move-result-object v2

    .line 101
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/utils/MAPVersion;->getVersionInfo()[I

    move-result-object v1

    array-length v1, v1

    .line 102
    iget-object v3, p0, Lcom/amazon/identity/auth/device/utils/MAPVersion;->mVersion:[I

    array-length v3, v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    move v1, v0

    .line 104
    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v4, p0, Lcom/amazon/identity/auth/device/utils/MAPVersion;->mVersion:[I

    aget v4, v4, v1

    aget v5, v2, v1

    if-ne v4, v5, :cond_0

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :cond_0
    iget-object v3, p0, Lcom/amazon/identity/auth/device/utils/MAPVersion;->mVersion:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 109
    aget v4, v2, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 110
    iget-object v5, p0, Lcom/amazon/identity/auth/device/utils/MAPVersion;->mVersion:[I

    array-length v5, v5

    if-ne v1, v5, :cond_1

    iget-object v1, p0, Lcom/amazon/identity/auth/device/utils/MAPVersion;->mVersion:[I

    array-length v1, v1

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/utils/MAPVersion;->getVersionInfo()[I

    move-result-object v5

    array-length v5, v5

    if-ne v1, v5, :cond_1

    .line 120
    :goto_1
    return v0

    .line 115
    :cond_1
    array-length v0, v2

    iget-object v1, p0, Lcom/amazon/identity/auth/device/utils/MAPVersion;->mVersion:[I

    array-length v1, v1

    if-eq v0, v1, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/amazon/identity/auth/device/utils/MAPVersion;->mVersion:[I

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    array-length v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    goto :goto_1

    .line 120
    :cond_2
    invoke-virtual {v3, v4}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 121
    :catch_0
    move-exception v0

    .line 123
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/utils/MAPVersion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " vs 2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/utils/MAPVersion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public getVersionInfo()[I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/amazon/identity/auth/device/utils/MAPVersion;->mVersion:[I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/amazon/identity/auth/device/utils/MAPVersion;->mVersion:[I

    invoke-static {v0}, Lcom/amazon/identity/auth/device/utils/MAPVersionHelper;->getVersionAsString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 134
    sget-object v0, Lcom/amazon/identity/auth/device/utils/MAPVersion;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MAPVersion writing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/identity/auth/device/utils/MAPVersion;->mVersion:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ints to parcel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/amazon/identity/auth/device/utils/MAPVersion;->mVersion:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget-object v0, p0, Lcom/amazon/identity/auth/device/utils/MAPVersion;->mVersion:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 137
    return-void
.end method
