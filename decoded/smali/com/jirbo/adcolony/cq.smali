.class Lcom/jirbo/adcolony/cq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/ck;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/ck;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/jirbo/adcolony/cq;->a:Lcom/jirbo/adcolony/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/jirbo/adcolony/cq;->a:Lcom/jirbo/adcolony/ck;

    iput p2, v0, Lcom/jirbo/adcolony/ck;->p:I

    .line 436
    return-void
.end method
