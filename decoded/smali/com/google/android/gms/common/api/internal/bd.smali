.class Lcom/google/android/gms/common/api/internal/bd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/r;


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/gms/common/api/n;

.field public final c:Lcom/google/android/gms/common/api/r;

.field final synthetic d:Lcom/google/android/gms/common/api/internal/bc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/bc;ILcom/google/android/gms/common/api/n;Lcom/google/android/gms/common/api/r;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/bd;->d:Lcom/google/android/gms/common/api/internal/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/common/api/internal/bd;->a:I

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/bd;->b:Lcom/google/android/gms/common/api/n;

    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/bd;->c:Lcom/google/android/gms/common/api/r;

    invoke-virtual {p3, p0}, Lcom/google/android/gms/common/api/n;->a(Lcom/google/android/gms/common/api/r;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bd;->b:Lcom/google/android/gms/common/api/n;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/n;->b(Lcom/google/android/gms/common/api/r;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bd;->b:Lcom/google/android/gms/common/api/n;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/n;->g()V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bd;->d:Lcom/google/android/gms/common/api/internal/bc;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/bc;->c(Lcom/google/android/gms/common/api/internal/bc;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/internal/be;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/bd;->d:Lcom/google/android/gms/common/api/internal/bc;

    iget v3, p0, Lcom/google/android/gms/common/api/internal/bd;->a:I

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/common/api/internal/be;-><init>(Lcom/google/android/gms/common/api/internal/bc;ILcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "GoogleApiClient #"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/common/api/internal/bd;->a:I

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bd;->b:Lcom/google/android/gms/common/api/n;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/google/android/gms/common/api/n;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method
