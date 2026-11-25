.class public final Lcom/google/android/gms/auth/api/credentials/internal/zzd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/api/credentials/CredentialsApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/google/android/gms/common/api/n;)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;
    .locals 2

    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->zzVu:Lcom/google/android/gms/common/api/i;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/n;->a(Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/common/api/h;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/credentials/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/internal/zzf;->d()Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;->zzmr()Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;->zzmr()Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzWl:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    goto :goto_0
.end method


# virtual methods
.method public delete(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/auth/api/credentials/Credential;)Lcom/google/android/gms/common/api/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/n;",
            "Lcom/google/android/gms/auth/api/credentials/Credential;",
            ")",
            "Lcom/google/android/gms/common/api/u",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/internal/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/auth/api/credentials/internal/d;-><init>(Lcom/google/android/gms/auth/api/credentials/internal/zzd;Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/auth/api/credentials/Credential;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/n;->b(Lcom/google/android/gms/common/api/internal/c;)Lcom/google/android/gms/common/api/internal/c;

    move-result-object v0

    return-object v0
.end method

.method public disableAutoSignIn(Lcom/google/android/gms/common/api/n;)Lcom/google/android/gms/common/api/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/n;",
            ")",
            "Lcom/google/android/gms/common/api/u",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/internal/e;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/api/credentials/internal/e;-><init>(Lcom/google/android/gms/auth/api/credentials/internal/zzd;Lcom/google/android/gms/common/api/n;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/n;->b(Lcom/google/android/gms/common/api/internal/c;)Lcom/google/android/gms/common/api/internal/c;

    move-result-object v0

    return-object v0
.end method

.method public getHintPickerIntent(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/auth/api/credentials/HintRequest;)Landroid/app/PendingIntent;
    .locals 5
    const-string/jumbo v0, "client must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/bl;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "request must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/bl;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->CREDENTIALS_API:Lcom/google/android/gms/common/api/a;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/n;->a(Lcom/google/android/gms/common/api/a;)Z

    move-result v0

    const-string/jumbo v1, "Auth.CREDENTIALS_API must be added to GoogleApiClient to use this API"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/bl;->b(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/n;->b()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/credentials/internal/zzd;->a(Lcom/google/android/gms/common/api/n;)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/google/android/gms/auth/api/credentials/internal/zzb;->zza(Landroid/content/Context;Lcom/google/android/gms/auth/api/credentials/HintRequest;Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/n;->b()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x7d0

    const/high16 v3, 0x10000000

    invoke-static {v3}, Lcom/pixelberrystudios/hwuandroid/ModernCompat;->pendingFlags(I)I
    move-result v4
    invoke-static {v1, v2, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    move-result-object v0

    return-object v0
.end method

.method public request(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)Lcom/google/android/gms/common/api/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/n;",
            "Lcom/google/android/gms/auth/api/credentials/CredentialRequest;",
            ")",
            "Lcom/google/android/gms/common/api/u",
            "<",
            "Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/internal/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/auth/api/credentials/internal/a;-><init>(Lcom/google/android/gms/auth/api/credentials/internal/zzd;Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/n;->a(Lcom/google/android/gms/common/api/internal/c;)Lcom/google/android/gms/common/api/internal/c;

    move-result-object v0

    return-object v0
.end method

.method public save(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/auth/api/credentials/Credential;)Lcom/google/android/gms/common/api/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/n;",
            "Lcom/google/android/gms/auth/api/credentials/Credential;",
            ")",
            "Lcom/google/android/gms/common/api/u",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/internal/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/auth/api/credentials/internal/c;-><init>(Lcom/google/android/gms/auth/api/credentials/internal/zzd;Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/auth/api/credentials/Credential;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/n;->b(Lcom/google/android/gms/common/api/internal/c;)Lcom/google/android/gms/common/api/internal/c;

    move-result-object v0

    return-object v0
.end method
