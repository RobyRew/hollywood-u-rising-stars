.class Lcom/google/android/gms/tagmanager/av;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/android/gms/tagmanager/aj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/aj",
            "<",
            "Lcom/google/android/gms/b/g;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/gms/b/g;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tagmanager/aj;Lcom/google/android/gms/b/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/aj",
            "<",
            "Lcom/google/android/gms/b/g;",
            ">;",
            "Lcom/google/android/gms/b/g;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/av;->a:Lcom/google/android/gms/tagmanager/aj;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/av;->b:Lcom/google/android/gms/b/g;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/tagmanager/aj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tagmanager/aj",
            "<",
            "Lcom/google/android/gms/b/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/av;->a:Lcom/google/android/gms/tagmanager/aj;

    return-object v0
.end method

.method public b()Lcom/google/android/gms/b/g;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/av;->b:Lcom/google/android/gms/b/g;

    return-object v0
.end method
