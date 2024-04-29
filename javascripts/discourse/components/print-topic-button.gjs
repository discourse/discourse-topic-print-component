import Component from "@glimmer/component";
import { getOwner } from "@ember/application";
import { action } from "@ember/object";
import { and, not } from "truth-helpers";
import DButton from "discourse/components/d-button";

export default class PrintTopicButton extends Component {
  @action
  printTopic() {
    getOwner(this).lookup("controller:topic").print();
  }

  <template>
    {{#if (and (not @fullScreen) @currentUser)}}
      <DButton
        class="btn btn-default print-button"
        @icon="print"
        @title="topic.print.help"
        @action={{this.printTopic}}
      />
    {{/if}}
  </template>
}
