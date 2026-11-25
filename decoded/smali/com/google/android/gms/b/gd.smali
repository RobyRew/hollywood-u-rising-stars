.class Lcom/google/android/gms/b/gd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/b/gc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/gc;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/gd;->b:Lcom/google/android/gms/b/gc;

    iput-object p2, p0, Lcom/google/android/gms/b/gd;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    invoke-static {}, Lcom/google/android/gms/ads/internal/g;->c()Lcom/google/android/gms/b/fq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/b/gd;->b:Lcom/google/android/gms/b/gc;

    invoke-static {v1}, Lcom/google/android/gms/b/gc;->a(Lcom/google/android/gms/b/gc;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "android.intent.extra.TEXT"

    iget-object v4, p0, Lcom/google/android/gms/b/gd;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "Share via"

    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/b/fq;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
