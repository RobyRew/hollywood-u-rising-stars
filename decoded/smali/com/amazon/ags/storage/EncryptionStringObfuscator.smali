.class public Lcom/amazon/ags/storage/EncryptionStringObfuscator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/ags/storage/StringObfuscator;


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "DES"

.field private static final TAG:Ljava/lang/String;

.field private static final UTF8:Ljava/lang/String; = "UTF8"


# instance fields
.field private final key:Ljavax/crypto/SecretKey;

.field private final valid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/storage/EncryptionStringObfuscator;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/storage/EncryptionStringObfuscator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "secretKey must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    array-length v0, p1

    if-ge v0, v5, :cond_4

    .line 37
    new-array v2, v5, [B

    move v3, v1

    move v0, v1

    .line 40
    :goto_0
    if-ge v3, v5, :cond_3

    .line 41
    aget-byte v4, p1, v0

    aput-byte v4, v2, v3

    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    array-length v4, p1

    if-lt v0, v4, :cond_2

    move v0, v1

    .line 40
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move-object p1, v2

    .line 50
    :cond_4
    const/4 v0, 0x0

    .line 54
    :try_start_0
    new-instance v2, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v2, p1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 55
    const-string/jumbo v3, "DES"

    invoke-static {v3}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 57
    invoke-virtual {v3, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 58
    const/4 v1, 0x1

    .line 63
    :goto_1
    iput-object v0, p0, Lcom/amazon/ags/storage/EncryptionStringObfuscator;->key:Ljavax/crypto/SecretKey;

    .line 64
    iput-boolean v1, p0, Lcom/amazon/ags/storage/EncryptionStringObfuscator;->valid:Z

    .line 65
    return-void

    .line 59
    :catch_0
    move-exception v2

    .line 60
    sget-object v3, Lcom/amazon/ags/storage/EncryptionStringObfuscator;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Failed to constructor secret key"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public obfuscate(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 75
    iget-boolean v1, p0, Lcom/amazon/ags/storage/EncryptionStringObfuscator;->valid:Z

    if-nez v1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-object v0

    .line 79
    :cond_1
    if-eqz p1, :cond_0

    .line 84
    :try_start_0
    const-string/jumbo v1, "DES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 85
    const-string/jumbo v2, "UTF8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 87
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/amazon/ags/storage/EncryptionStringObfuscator;->key:Ljavax/crypto/SecretKey;

    invoke-virtual {v1, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 89
    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 91
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    .line 93
    sget-object v2, Lcom/amazon/ags/storage/EncryptionStringObfuscator;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to obfuscate string"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unobfuscate(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 106
    iget-boolean v1, p0, Lcom/amazon/ags/storage/EncryptionStringObfuscator;->valid:Z

    if-nez v1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-object v0

    .line 110
    :cond_1
    if-eqz p1, :cond_0

    .line 115
    :try_start_0
    const-string/jumbo v1, "DES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 116
    const-string/jumbo v1, "UTF8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v3

    .line 118
    const/4 v1, 0x2

    iget-object v4, p0, Lcom/amazon/ags/storage/EncryptionStringObfuscator;->key:Ljavax/crypto/SecretKey;

    invoke-virtual {v2, v1, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 120
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    const-string/jumbo v3, "UTF8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 121
    :catch_0
    move-exception v1

    .line 122
    sget-object v2, Lcom/amazon/ags/storage/EncryptionStringObfuscator;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to unobfuscate string"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
