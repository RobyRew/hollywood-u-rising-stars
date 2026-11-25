.class public Lcom/google/android/gms/measurement/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/measurement/internal/bx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/bx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/bl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/a;->a:Lcom/google/android/gms/measurement/internal/bx;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/measurement/a;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/bx;->a(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bx;->m()Lcom/google/android/gms/measurement/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    if-nez p3, :cond_0

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/a;->a:Lcom/google/android/gms/measurement/internal/bx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bx;->l()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
