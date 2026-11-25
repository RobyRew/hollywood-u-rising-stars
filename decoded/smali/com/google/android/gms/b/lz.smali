.class public Lcom/google/android/gms/b/lz;
.super Lcom/google/android/gms/drive/metadata/internal/s;

# interfaces
.implements Lcom/google/android/gms/drive/metadata/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/internal/s;",
        "Lcom/google/android/gms/drive/metadata/c",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const-string/jumbo v0, "mimeType"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/drive/metadata/internal/s;-><init>(Ljava/lang/String;I)V

    return-void
.end method
