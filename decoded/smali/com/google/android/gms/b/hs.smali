.class Lcom/google/android/gms/b/hs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/google/android/gms/b/hr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/hr;Ljava/lang/String;J)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/b/hs;->c:Lcom/google/android/gms/b/hr;

    iput-object p2, p0, Lcom/google/android/gms/b/hs;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/b/hs;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/b/hs;->c:Lcom/google/android/gms/b/hr;

    invoke-static {v0}, Lcom/google/android/gms/b/hr;->b(Lcom/google/android/gms/b/hr;)Lcom/google/android/gms/b/qv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/b/hs;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/b/hs;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/b/qv;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/b/hs;->c:Lcom/google/android/gms/b/hr;

    invoke-static {v0}, Lcom/google/android/gms/b/hr;->b(Lcom/google/android/gms/b/hr;)Lcom/google/android/gms/b/qv;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/qv;->a(Ljava/lang/String;)V

    return-void
.end method
