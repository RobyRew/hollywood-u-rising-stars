.class Lcom/google/android/gms/analytics/internal/ar;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/internal/bg;

.field final synthetic b:J

.field final synthetic c:Lcom/google/android/gms/analytics/internal/am;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/am;Lcom/google/android/gms/analytics/internal/bg;J)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/ar;->c:Lcom/google/android/gms/analytics/internal/am;

    iput-object p2, p0, Lcom/google/android/gms/analytics/internal/ar;->a:Lcom/google/android/gms/analytics/internal/bg;

    iput-wide p3, p0, Lcom/google/android/gms/analytics/internal/ar;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/ar;->c:Lcom/google/android/gms/analytics/internal/am;

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/ar;->a:Lcom/google/android/gms/analytics/internal/bg;

    iget-wide v2, p0, Lcom/google/android/gms/analytics/internal/ar;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/analytics/internal/am;->a(Lcom/google/android/gms/analytics/internal/bg;J)V

    return-void
.end method
