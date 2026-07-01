.class Lcom/pramod/loopmidi/LoopsActivity$10;
.super Ljava/lang/Object;
.source "LoopsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pramod/loopmidi/LoopsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pramod/loopmidi/LoopsActivity;


# direct methods
.method constructor <init>(Lcom/pramod/loopmidi/LoopsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/pramod/loopmidi/LoopsActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 277
    iput-object p1, p0, Lcom/pramod/loopmidi/LoopsActivity$10;->this$0:Lcom/pramod/loopmidi/LoopsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 280
    iget-object v0, p0, Lcom/pramod/loopmidi/LoopsActivity$10;->this$0:Lcom/pramod/loopmidi/LoopsActivity;

    invoke-static {v0}, Lcom/pramod/loopmidi/LoopsActivity;->-$$Nest$fgetseekTempo(Lcom/pramod/loopmidi/LoopsActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 281
    .local v0, "progress":I
    if-lez v0, :cond_0

    .line 282
    iget-object v1, p0, Lcom/pramod/loopmidi/LoopsActivity$10;->this$0:Lcom/pramod/loopmidi/LoopsActivity;

    invoke-static {v1}, Lcom/pramod/loopmidi/LoopsActivity;->-$$Nest$fgetseekTempo(Lcom/pramod/loopmidi/LoopsActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 284
    :cond_0
    return-void
.end method
